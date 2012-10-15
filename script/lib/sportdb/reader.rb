module SportDB

class Reader

## make models available in sportdb module by default with namespace
#  e.g. lets you use Team instead of Models::Team 
  include SportDB::Models


  def initialize( opts )
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO
    
    @opts = opts
  end

  attr_reader :logger, :opts

  def run( args )
  
    puts SportDB.banner

    puts "working directory: #{Dir.pwd}"
 
    ## assume active activerecord connection
    ##
    
    @event = Event.find_by_key!( opts.event )
    
    puts "Event #{@event.key} >#{@event.title}<"


    ## build known teams table w/ synonyms e.g.
    #
    #   nb: synonyms can be a regex not just a literal string
    # [[ 'wolfsbrug', [ 'VfL Wolfsburg' ]],
    #  [ 'augsburg',  [ 'FC Augsburg', 'Augi2', 'Augi3' ]],
    #  [ 'stuttgart', [ 'VfB Stuttgart' ]] ]
    
    @known_teams = []
 
    @event.teams.each_with_index do |team,index|
      
      titles = []
      titles << team.title
      titles += team.synonyms.split('|')  if team.synonyms.present?
      titles << team.tag                  if team.tag.present?
      titles << team.key
            
      @known_teams << [ team.key, titles ]
      
      puts "  Team[#{index+1}] #{team.key} >#{titles.join('|')}<"
    end
 
 
    args.each do |arg|
      name = arg     # File.basename( arg, '.*' )
      parse_fixtures( name )
    end
    
    
    puts 'Done.'
    
  end   # method run


  def is_round?( line )
    line =~ /Spieltag/
  end
  
  def find_date!( line )
    # extract date from line
    # and return it
    # NB: side effect - removes date from line string
    
    # e.g. 14.09. 20:30
    regex = /(\d{2})\.(\d{2})\.\s+(\d{2}):(\d{2})/
    
    if line =~ regex
      value = "2012-#{$2}-#{$1} #{$3}:#{$4}"
      puts "   date: >#{value}<"

      ## todo: lets you configure year
      ##  and time zone (e.g. cet, eet, utc, etc.)
      
      line.sub!( regex, '[DATE]' )

      return Time.now
    else
      return nil
    end
  end

  def find_score!( line )
    # extract score from line
    # and return it
    # NB: side effect - removes date from line string
    
    # e.g. 1:2 or 0:2 or 3:3
    regex = /(\d):(\d)/
    
    if line =~ regex
      value = "#{$1}-#{$2}"
      puts "   score: >#{value}<"
      
      line.sub!( regex, '[SCORE]' )

      return [$1,$2]
    else
      return nil
    end
  end
  

  def find_team_worker!( line, index )
    regex = /@@([^@]+?)@@/     # e.g. everything in @@ .... @@ (use non-greedy +? plus all chars but not @, that is [^@])
    
    if line =~ regex
      value = "#{$1}"
      puts "   team#{index}: >#{value}<"
      
      line.sub!( regex, "[TEAM#{index}]" )

      return $1
    else
      return nil
    end
  end

  def find_team1!( line )
    find_team_worker!( line, 1 )
  end
  
  def find_team2!( line )
    find_team_worker!( line, 2 )
  end
  
  
  def match_team_worker!( line, key, values )
    values.each do |value|
      regex = Regexp.new( value )
      if line =~ regex
        puts "     match for team >#{key}< >#{value}<"
        line.sub!( regex, "@@#{key}@@" )
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
  
  
  

  def parse_fixtures( name )
  
    path = "#{opts.data_path}/#{name}.txt"
 
    puts "*** parsing data '#{name}' (#{path})..."

    old_lines = File.read( path )
    
    new_lines = []

    header_lines = []

    header_lines << "#####################################\n"
    header_lines << "# generiert am  #{Time.now}\n"
    header_lines << "#   version: #{SportDB::VERSION} -- banner here??\n"
  
    old_lines.each_line do |line|
  
      if line =~ /^\s*#/
        # skip komments and do NOT copy to result (keep comments secret!)
        logger.debug 'skipping comment line'
        next
      end
        
      if line =~ /^\s*$/ 
        # kommentar oder leerzeile überspringen 
        logger.debug 'skipping blank line'
        new_lines << line
        next
      end

      # remove leading and trailing whitespace
      line = line.strip

      if is_round?( line )
        puts "parsing round line: >#{line}<"  
      else
        puts "parsing game (fixture) line: >#{line}<"
        date  = find_date!( line )
        score = find_score!( line )
        
        match_teams!( line )
        team1 = find_team1!( line )
        team2 = find_team2!( line )
        
        puts "  line: >#{line}<"
      end
      
             
    end # oldlines.each

    ## NB: add parsing errors to header as we go along (see above)
    
    header_lines << "#####################################\n"
    header_lines << "\n"

    pp header_lines    
    
  end # method parse_fixtures

  
end # class Reader
end # module SportDB