
module SportDB

class Runner

  def initialize
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO

    @opts    = Opts.new
  end

  attr_reader :logger, :opts


  def run( args )
    opt=OptionParser.new do |cmd|
    
      cmd.banner = "Usage: sportdb [options]"

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
        
        ## todo: set ActiveRecord Logger to stdout??
      end

      cmd.on_tail( "-h", "--help", "Show this message" ) do
        puts <<EOS

sportdb - sport.db command line tool

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

    loader = nil
    if opts.load?
      loader = Loader.new
    end

    args.each do |arg|
      name = arg     # File.basename( arg, '.*' )
      
      if opts.load?
        loader.load_fixtures( name )  # load from gem (built-in)
      else
        load_fixtures( name )  # load from file system
      end
    end
    
    dump_stats
    dump_props
    
    puts 'Done.'
    
  end   # method run


  def load_fixtures( name )
      path = "#{opts.data_path}/#{name}.rb"
 
      puts "*** loading data '#{name}' (#{path})..."

      text = File.read( path )

      SportDB.module_eval( text )

      # NB: same as
      #
      # module SportDB
      #  <code here>
      # end

      # require path
      # require "#{Dir.pwd}/db/#{seed}.rb"

      # Prop.create!( :key => "db.#{name}.version", :value => SportDB::VERSION )
  end



  ##### fix/todo: reuse between runner/loader - include w/ helper module?
  def dump_stats
    # todo: use %5d or similar to format string
    puts "Stats:"
    puts "  #{Event.count} events"
    puts "  #{Team.count} teams"
    puts "  #{Country.count} countries"
    puts "  #{Game.count} games"
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