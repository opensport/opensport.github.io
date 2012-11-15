
module SportDB

class Runner


## make models available in sportdb module by default with namespace
#  e.g. lets you use Team instead of Models::Team 
  include SportDB::Models

  def initialize
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO

    @opts    = Opts.new
  end

  attr_reader :logger, :opts

  def run( args )
    opt=OptionParser.new do |cmd|
    
      cmd.banner = "Usage: sportdb [options]"

      cmd.on( '-e', '--event KEY', 'Event to load or generate' ) { |key| opts.event = key; }
      cmd.on( '-g', '--generate', 'Generate fixtures from template' ) { opts.generate = true }

      ## todo: change to different flag??   use -c/--config ???
      cmd.on( '-c', '--create', 'Create DB schema' ) { opts.create = true }

      cmd.on( '--world', "Populate world tables with builtin data (version #{WorldDB::VERSION})" ) { opts.world = true }

      cmd.on( '--delete', 'Delete all records' ) { opts.delete = true }
      
      cmd.on( '--load', 'Use loader for builtin sports data' ) { opts.load = true }
      
      cmd.on( '-o', '--output PATH', "Output path (default is #{opts.output_path})" ) { |path| opts.output_path = path }

      ### todo: in future allow multiple search path??
      cmd.on( '-i', '--include PATH', "Data path (default is #{opts.data_path})" ) { |path| opts.data_path = path }

      cmd.on( '-v', '--version', "Show version" ) do
        puts SportDB.banner
        exit
      end

      cmd.on( "--verbose", "Show debug trace" )  do
        logger.datetime_format = "%H:%H:%S"
        logger.level = Logger::DEBUG
        
        ActiveRecord::Base.logger = Logger.new(STDOUT)
      end

      cmd.on_tail( "-h", "--help", "Show this message" ) do
        puts <<EOS

sportdb - sport.db command line tool, version #{VERSION}

#{cmd.help}

Examples:
    sportdb cl/teams cl/2012_13/cl                     # import champions league (cl)
    sportdb -c                                         # create database schema

More Examples:
    sportdb                                            # show stats (table counts, table props)
    sportdb -i ../sport.db/db cl/teams cl/2012_13/cl   # import champions league (cl) in db folder

Further information:
  http://geraldb.github.com/sport.db
  
EOS
        exit
      end
    end

    opt.parse!( args )
  
    puts SportDB.banner

    puts "working directory: #{Dir.pwd}"
 
    db_config = {
     :adapter  => 'sqlite3',
     :database => "#{opts.output_path}/sport.db"
    }
  
    puts "Connecting to db using settings: "
    pp db_config

    ActiveRecord::Base.establish_connection( db_config )
    
    if opts.create?
      WorldDB::CreateDB.up
      CreateDB.up
    end
    
    if opts.delete?
      SportDB.delete!
      WorldDB.delete!  # countries,regions,cities,props
    end
    
    if opts.world?
      ## todo/fix: make it into a load_all helper
 
    reader = WorldDB::Reader.new
 
  ['africa/countries',
   'america/countries',
   'america/br/regions',
   'america/br/cities',
   'america/ca/regions',
   'america/ca/cities',
   'america/mx/cities',
   'america/us/regions',
   'america/us/cities',
   'america/ve/regions',
   'america/ve/cities',
   'asia/countries',
   'asia/jp/cities',
   'europe/countries',
   'europe/at/regions',
   'europe/at/cities',
   'europe/be/cities',
   'europe/by/cities',
   'europe/ch/cities',
   'europe/cy/cities',
   'europe/de/regions',
   'europe/de/cities',
   'europe/dk/cities',
   'europe/en/cities',
   'europe/es/cities',
   'europe/fr/cities',
   'europe/gr/cities',
   'europe/hr/cities',
   'europe/it/cities',
   'europe/nl/cities',
   'europe/pt/cities',
   'europe/ro/cities',
   'europe/ru/cities',
   'europe/sc/cities',
   'europe/tr/cities',
   'europe/ua/cities',
   'oceania/countries',
   'oceania/au/cities'
   ].each do |seed|
    
    if seed =~ /countries/
      reader.load_countries_builtin( seed )
    elsif seed =~ /\/([a-z]{2})\/cities/
      reader.load_cities_builtin( $1, seed )
    elsif seed =~ /\/([a-z]{2})\/regions/
      reader.load_regions_builtin( $1, seed )
    else
      puts "**** unknown fixture type >#{seed}<"
      # todo/fix: exit w/ error
    end
      
    end # each seed
    end # if opts.world?

    if opts.event.present?
      if opts.generate?
        Templater.new( logger ).run( opts, args ) # export/generate ruby fixtures
      else
        Reader.new( logger ).run( opts, args )  # load/read plain text fixtures
      end
    else
      Loader.new( logger ).run( opts, args ) # load ruby fixtures
    end

    
    dump_stats
    dump_props
    
    puts 'Done.'
    
  end   # method run


  def dump_stats
    # todo: use %5d or similar to format string
    puts "Stats:"
    puts "  #{Event.count} events  /  #{Round.count} rounds  /  #{Group.count} groups"
    puts "  #{League.count} leagues  /  #{Season.count} seasons"
    puts "  #{Country.count} countries / #{Region.count} regions / #{City.count} cities"
    puts "  #{Team.count} teams"
    puts "  #{Game.count} games"
    puts "  #{Badge.count} badges"
  end

  def dump_props
    # todo: use %5 or similar to format string
    puts "Props:"
    Prop.order( 'created_at asc' ).all.each do |prop|
      puts "  #{prop.key} / #{prop.value} || #{prop.created_at}"
    end
  end
  
end # class Runner
end # module SportDB