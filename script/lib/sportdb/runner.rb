
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
      
      cmd.on( '-o', '--output PATH', "Output Path (default is #{opts.output_path})" ) { |path| opts.output_path = path }

      cmd.on( '-v', '--version', "Show version" ) do
        puts SportDB.banner
        exit
      end

      cmd.on( "--verbose", "Show debug trace" )  do
        logger.datetime_format = "%H:%H:%S"
        logger.level = Logger::DEBUG
      end

      cmd.on_tail( "-h", "--help", "Show this message" ) do
        puts <<EOS

sportdb - sport.db command line tool

#{cmd.help}

Examples:
    sportdb cl                          # to be done

Further information:
  http://geraldb.github.com/sport.db
  
EOS
        exit
      end
    end

    opt.parse!( args )
  
    puts SportDB.banner

 
    db_config = {
     :adapter  => 'sqlite3',
     :database => "#{opts.output_path}/sport.db"
    }
  
    
    if opts.create?
      create_db( db_config )
    end
    
    
    args.each do |arg|

    
    ### nb: seeds need to get require needs to get included into module SportDB
    #  how? use eval()
    #
    
    
 #     name = File.basename( arg, '.*' )
 
 #     config_path = arg.dup   # add .yml file extension if missing (for convenience)
 #     config_path << '.yml'  unless config_path.ends_with?( '.yml' )

 #     config = YAML.load_file( config_path )
      
 #     puts "dump >#{config_path}<:"
 #     pp config
   
=begin

## todo: add ruby version, etc.

puts "working directory: #{Dir.pwd}"


DB_CONFIG = {
  :adapter  => 'sqlite3',
  :database => 'sport.db'
}

ActiveRecord::Base.establish_connection( DB_CONFIG )


['cl/teams', 'cl/2012_13/cl'].each do |seed|
    puts "*** loading seed data in '#{seed}'..."
    require "#{Dir.pwd}/db/#{seed}.rb"
end

Prop.create!( :key => 'db.version', :value => '1' )


=end
   
   
      
    end
    
    puts 'Done.'
    
  end   # method run

  
end # class Runner
end # module SportDB