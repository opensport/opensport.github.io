
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

      cmd.on( '-e', '--event KEY', 'Event to Load or Generate' ) { |key| opts.event = key; }
      cmd.on( '-g', '--generate', 'Generate Fixtures from Template' ) { opts.generate = true }

      ## todo: change to different flag??   use -c/--config ???
      cmd.on( '-c', '--create', 'Create DB Schema' ) { opts.create = true }

      cmd.on( '--delete', 'Delete all records' ) { opts.delete = true }
      
      cmd.on( '--load', 'Use Loader for Builtin Sports Data' ) { opts.load = true }
      
      cmd.on( '-o', '--output PATH', "Output Path (default is #{opts.output_path})" ) { |path| opts.output_path = path }

      ### todo: in future allow multiple search path??
      cmd.on( '-i', '--include PATH', "Data Path (default is #{opts.data_path})" ) { |path| opts.data_path = path }

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
      CreateDB.up
    end
    
    if opts.delete?
      SportDB.delete!
    end

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
    puts "  #{Country.count} countries"
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