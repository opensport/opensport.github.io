module SportDB

class Reader

## make models available in sportdb module by default with namespace
#  e.g. lets you use Team instead of Models::Team 
  include SportDB::Models


  def initialize
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO
  end

  attr_reader :logger

  def run( args )
  
    puts SportDB.banner

    puts "working directory: #{Dir.pwd}"
 
    ## assume active activerecord connection
    ## 
 
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

  def find_team!( line )
    regex = /@@([^@]+?)@@/     # e.g. everything in @@ .... @@ (use non-greedy +? plus all chars but not @, that is [^@])
    
    if line =~ regex
      value = "#{$1}"
      puts "   team: >#{value}<"
      
      line.sub!( regex, '[TEAM]' )

      return $1
    else
      return nil
    end
  end
  
  def translate_teams!( line )

    ## nb: synonyms can be a regex not just a literal string
    known_teams = [
      [ 'wolfsbrug', [ 'VfL Wolfsburg' ]],
      [ 'augsburg',  [ 'FC Augsburg', 'Augi2', 'Augi3' ]],
      [ 'stuttgart', [ 'VfB Stuttgart' ]] ]
    
    known_teams.each do |rec|
      key    = rec[0]
      values = rec[1]
      values.each do |value|
        regex = Regexp.new( value )
        if line =~ regex
          puts "   team: >#{key}< from >#{value}<"
          line.sub!( regex, "@@#{key}@@" )
        end
      end
    end # each known_teams
    
  end # method translate_teams!
  
  
  

  def parse_fixtures( name )
    
    path = name
 
    puts "*** loading data '#{name}' (#{path})..."

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

      if is_round?( line )
        puts "parsing round line: >#{line}<"  
      else
        puts "parsing game (fixture) line: >#{line}<"
        date  = find_date!( line )
        score = find_score!( line )
        
        translate_teams!( line )
        team1 = find_team!( line )
        team2 = find_team!( line )
        
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