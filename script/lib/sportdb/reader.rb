# encoding: utf-8

module SportDB

class Reader

## make models available in sportdb module by default with namespace
#  e.g. lets you use Team instead of Models::Team 
  include SportDB::Models


  def initialize( logger=nil )
    if logger.nil?
      @logger = Logger.new(STDOUT)
      @logger.level = Logger::INFO
    else
      @logger = logger
    end
  end

  attr_reader :logger

  def run( opts, args )
 
    args.each do |arg|
      name = arg     # File.basename( arg, '.*' )

      if opts.load?
        load_fixtures_builtin( opts.event, name )
      else
        load_fixtures_with_include_path( opts.event, name, opts.data_path )
      end
    end

  end


  def load_fixtures_with_include_path( event_key, name, include_path )  # load from file system
    path = "#{include_path}/#{name}.txt"

    puts "*** parsing data '#{name}' (#{path})..."

    code = File.read( path )
    
    load_fixtures_worker( event_key, code )

    ### fix: 
    ## for loaded from fs use filestat? for version - why? why not?

    Prop.create!( key: "db.#{fixture_name_to_prop_key(name)}.version", value: "txt.1" )
  end

  def load_fixtures_builtin( event_key, name ) # load from gem (built-in)
    path = "#{SportDB.root}/db/#{name}.txt"

    puts "*** parsing data '#{name}' (#{path})..."

    code = File.read( path )
    
    load_fixtures_worker( event_key, code )
    
    Prop.create!( key: "db.#{fixture_name_to_prop_key(name)}.version", value: "sport.txt.#{SportDB::VERSION}" )
  end


private

 ##
  # fix/todo: share helper w/ other readers
  
  # helper
  #   change at/2012_13/bl           to at.2012/13.bl
  #    or    quali_2012_13_europe_c  to quali.2012/13.europe.c
  
  def fixture_name_to_prop_key( name )
    prop_key = name.gsub( '/', '.' )
    prop_key = prop_key.gsub( /(\d{4})_(\d{2})/, '\1/\2' )  # 2012_13 => 2012/13
    prop_key = prop_key.gsub( '_', '.' )
    prop_key
  end

  def load_fixtures_worker( event_key, data )
   
    ## assume active activerecord connection
    ##
    
    ## reset cached values
    @patch_rounds  = {}
    @knockout_flag = false
    @round         = nil
    
    
    @event = Event.find_by_key!( event_key )
    
    puts "Event #{@event.key} >#{@event.title}<"
    
    @known_teams = @event.known_teams_table
    
    parse_fixtures( data )
    
  end   # method load_fixtures


  def is_round?( line )
    line =~ /Spieltag|Runde|Achtelfinale|Viertelfinale|Halbfinale|Finale/
  end
  
  def is_group?( line )
    # NB: check after is_round? (round may contain group reference!)
    line =~ /Gruppe|Group/
  end
  
  def find_knockout_flag( line )
    if line =~ /Achtelfinale|Viertelfinale|Halbfinale|Finale|K\.O\.|Knockout/
      puts "   setting knockout flag to true"
      true
    else
      false
    end
  end
  
  def find_group_title_and_pos!( line )
    ## group pos - for now support single digit e.g 1,2,3 or letter e.g. A,B,C
    ## nb:  (?:)  = is for non-capturing group(ing)
    regex = /(?:Group|Gruppe)\s+((?:\d{1}|[A-Z]{1}))\b/
    
    m = regex.match( line )
    unless m.nil?
      if m[1] == 'A'
        pos = 1
      elsif m[1] == 'B'
        pos = 2
      elsif m[1] == 'C'
        pos = 3
      elsif m[1] == 'D'
        pos = 4
      elsif m[1]== 'E'
        pos = 5
      elsif m[1] == 'F'
        pos = 6
      elsif m[1] == 'G'
        pos = 7
      elsif m[1] == 'H'
        pos = 8
      elsif m[1] == 'I'
        pos = 9
      elsif m[1] == 'J'
        pos = 10
      else
        pos = m[1].to_i
      end

      title = m[0]

      puts "   title: >#{title}<"
      puts "   pos: >#{pos}<"
      
      line.sub!( regex, '[GROUP|TITLE+POS]' )

      return [title,pos]
    else
      return [nil,nil]
    end
  end
  
  def find_round_pos!( line )
    ## fix/todo:
    ##  if no round found assume last_pos+1 ??? why? why not?

    regex = /\b(\d+)\b/
    
    if line =~ regex
      value = $1.to_i
      puts "   pos: >#{value}<"
      
      line.sub!( regex, '[POS]' )

      return value
    else
      return nil
    end    
  end
  
  def find_date!( line )
    # extract date from line
    # and return it
    # NB: side effect - removes date from line string
    
    # e.g. 2012-09-14 20:30   => YYYY-MM-DD HH:MM
    regex_db = /\b(\d{4})-(\d{2})-(\d{2})\s+(\d{2}):(\d{2})\b/

    # e.g. 14.09. 20:30  => DD.MM. HH:MM
    regex_de = /\b(\d{2})\.(\d{2})\.\s+(\d{2}):(\d{2})\b/

    if line =~ regex_db
      value = "#{$1}-#{$2}-#{$3} #{$4}:#{$5}"
      puts "   date: >#{value}<"

      ## todo: lets you configure year
      ##  and time zone (e.g. cet, eet, utc, etc.)
      
      line.sub!( regex_db, '[DATE.DB]' )

      return DateTime.strptime( value, '%Y-%m-%d %H:%M' )
    elsif line =~ regex_de
      value = "2012-#{$2}-#{$1} #{$3}:#{$4}"
      puts "   date: >#{value}<"

      ## todo: lets you configure year
      ##  and time zone (e.g. cet, eet, utc, etc.)
      
      line.sub!( regex_de, '[DATE.DE]' )

      return DateTime.strptime( value, '%Y-%m-%d %H:%M' )
    else
      return nil
    end
  end


  def find_game_pos!( line )
    # extract optional game pos from line
    # and return it
    # NB: side effect - removes pos from line string

    # e.g.  (1)   - must start line 
    regex = /^[ \t]*\((\d{1,3})\)[ \t]+/
    if line =~ regex
      puts "   pos: >#{$1}<"
      
      line.sub!( regex, '[POS] ' )
      return $1.to_i
    else
      return nil
    end

  end

  def find_scores!( line )
    # extract score from line
    # and return it
    # NB: side effect - removes date from line string
    
    # e.g. 1:2 or 0:2 or 3:3
    regex = /\b(\d):(\d)\b/
    
    # e.g. 1:2nV  => overtime
    regex_ot = /\b(\d):(\d)[ \t]?[nN][vV]\b/
    
    # e.g. 5:4iE  => penalty
    regex_p = /\b(\d):(\d)[ \t]?[iI][eE]\b/
    
    scores = []
    
    if line =~ regex
      puts "   score: >#{$1}-#{$2}<"
      
      line.sub!( regex, '[SCORE]' )

      scores << $1.to_i
      scores << $2.to_i
      
      if line =~ regex_ot
        puts "   score.ot: >#{$1}-#{$2}<"
      
        line.sub!( regex_ot, '[SCORE.OT]' )

        scores << $1.to_i
        scores << $2.to_i
      
        if line =~ regex_p
          puts "   score.p: >#{$1}-#{$2}<"
      
          line.sub!( regex_p, '[SCORE.P]' )

          scores << $1.to_i
          scores << $2.to_i
        end
      end
    end
    scores
  end # methdod find_scores!
  

  def find_team_worker!( line, index )
    regex = /@@oo([^@]+?)oo@@/     # e.g. everything in @@ .... @@ (use non-greedy +? plus all chars but not @, that is [^@])
    
    if line =~ regex
      value = "#{$1}"
      puts "   team#{index}: >#{value}<"
      
      line.sub!( regex, "[TEAM#{index}]" )

      return $1
    else
      return nil
    end
  end
  
  def find_teams!( line )
    counter = 1
    teams = []
    
    team = find_team_worker!( line, counter )
    while team.present?
      teams << team
      counter += 1
      team = find_team_worker!( line, counter )
    end
    
    teams
  end

  def find_team1!( line )
    find_team_worker!( line, 1 )
  end
  
  def find_team2!( line )
    find_team_worker!( line, 2 )
  end


  def match_team_worker!( line, key, values )
    values.each do |value|
      ## nb: \b does NOT include space or newline for word boundry (only alphanums e.g. a-z0-9)
      ## (thus add it, allows match for Benfica Lis.  for example - note . at the end)

      ## check add $ e.g. (\b| |\t|$) does this work? - check w/ Benfica Lis.$
      regex = /\b#{value}(\b| |\t)/   # wrap with world boundry (e.g. match only whole words e.g. not wac in wacker) 
      if line =~ regex
        puts "     match for team >#{key}< >#{value}<"
        # make sure @@oo{key}oo@@ doesn't match itself with other key e.g. wacker, wac, etc.
        line.sub!( regex, "@@oo#{key}oo@@ " )    # NB: add one space char at end
        return true    # break out after first match (do NOT continue)
      end
    end
    return false
  end

  def match_teams!( line )
    @known_teams.each do |rec|
      key    = rec[0]
      values = rec[1]
      match_team_worker!( line, key, values )
    end # each known_teams    
  end # method translate_teams!
  
  
  def parse_group( line )
    puts "parsing group line: >#{line}<"
    
    match_teams!( line )
    team_keys = find_teams!( line )
      
    title, pos = find_group_title_and_pos!( line )

    puts "  line: >#{line}<"

    ## world2 = Group.create!( event: world, pos: 2, title: 'Gruppe 2' )
    ## world2.add_teams_from_ary!( team_keys_world2 )

    group_attribs = {
      title: title
    }
        
    @group = Group.find_by_event_id_and_pos( @event.id, pos )
    if @group.present?
      puts "*** update group #{@group.id}:"
    else
      puts "*** create group:"
      @group = Group.new
      group_attribs = round_attribs.merge( {
        event_id: @event.id,
        pos:   pos
      })
    end
      
    puts  group_attribs.to_json
   
    @group.update_attributes!( group_attribs )

    @group.teams.clear  # remove old teams
    ## add new teams
    team_keys.each do |team_key|
      team = Team.find_by_key!( team_key )
      puts "  adding team #{team.title} (#{team.code})"
      @group.teams << team
    end
  end
  
  def parse_round( line )
    puts "parsing round line: >#{line}<"
    pos = find_round_pos!( line )
        
    @knockout_flag = find_knockout_flag( line )
    puts "  line: >#{line}<"
        
    ## NB: dummy/placeholder start_at, end_at date
    ##  replace/patch after adding all games for round
        
    round_attribs = {
      title: "#{pos}. Runde"
    }
        
    @round = Round.find_by_event_id_and_pos( @event.id, pos )
    if @round.present?
      puts "*** update round #{@round.id}:"
    else
      puts "*** create round:"
      @round = Round.new
          
      round_attribs = round_attribs.merge( {
        event_id: @event.id,
        pos:   pos,
        start_at: Time.utc('1912-12-12'),
        end_at:   Time.utc('1912-12-12')
      })
    end
        
    puts round_attribs.to_json
   
    @round.update_attributes!( round_attribs )

    ### store list of round is for patching start_at/end_at at the end
    @patch_rounds[ @round.id ] = @round.id
  end

  def parse_game( line )
    puts "parsing game (fixture) line: >#{line}<"

    pos = find_game_pos!( line )

    match_teams!( line )
    team1_key = find_team1!( line )
    team2_key = find_team2!( line )

    date  = find_date!( line )
    scores = find_scores!( line )
        
    puts "  line: >#{line}<"


    ### todo: cache team lookups in hash?

    team1 = Team.find_by_key!( team1_key )
    team2 = Team.find_by_key!( team2_key )

    ### check if games exists
    ##  with this teams in this round if yes only update
    game = Game.find_by_round_id_and_team1_id_and_team2_id(
                         @round.id, team1.id, team2.id
    )

    game_attribs = {
      score1:    scores[0],
      score2:    scores[1],
      score3:    scores[2],
      score4:    scores[3],
      score5:    scores[4],
      score6:    scores[5],
      play_at:   date,
      knockout:  @knockout_flag
    }
        
    game_attribs[ :pos ] = pos   if pos.present?

    if game.present?
      puts "*** update game #{game.id}:"
    else
      puts "*** create game:"
      game = Game.new

      more_game_attribs = {
        round_id:  @round.id,
        team1_id: team1.id,
        team2_id: team2.id
      }
          
      ## NB: use round.games.count for pos
      ##  lets us add games out of order if later needed
      more_game_attribs[ :pos ] = @round.games.count+1  if pos.nil? 

      game_attribs = game_attribs.merge( more_game_attribs )
    end

    puts game_attribs.to_json

    game.update_attributes!( game_attribs )
  end


  def parse_fixtures( data )
      
    data.each_line do |line|
  
      if line =~ /^\s*#/
        # skip komments and do NOT copy to result (keep comments secret!)
        logger.debug 'skipping comment line'
        next
      end
        
      if line =~ /^\s*$/ 
        # kommentar oder leerzeile überspringen 
        logger.debug 'skipping blank line'
        next
      end

      # remove leading and trailing whitespace
      line = line.strip

      if is_round?( line )
        parse_round( line )
      elsif is_group?( line ) ## NB: group goes after round (round may contain group marker too)
        parse_group( line )
      else
        parse_game( line )
      end
    end # lines.each
    
    @patch_rounds.each do |k,v|
      puts "*** patch start_at/end_at date for round #{k}:"
      round = Round.find( k )
      games = round.games.order( 'play_at asc' ).all
      
      ## skip rounds w/ no games
      
      ## todo/fix: what's the best way for checking assoc w/ 0 recs?
      next if games.size == 0
    
      round_attribs = {}
      
      ## todo: check for no records
      ##  e.g. if game[0].present? or just if game[0]  ??
      
      round_attribs[:start_at] = games[0].play_at
      round_attribs[:end_at  ] = games[-1].play_at

      puts round_attribs.to_json
      round.update_attributes!( round_attribs )
    end
    
  end # method parse_fixtures

  
end # class Reader
end # module SportDB
