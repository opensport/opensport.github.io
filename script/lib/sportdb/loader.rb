
module SportDB

class Loader

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
      load_fixtures( name )
    end
    
    dump_stats
    dump_props
    
    puts 'Done.'
    
  end   # method run



  def load_fixtures( name )
    
    path = "#{SportDB.root}/db/#{name}.rb"
 
    puts "*** loading data '#{name}' (#{path})..."

    text = File.read( path )

    SportDB.module_eval( text )

    # NB: same as
    #
    # module SportDB
    #  <code here>
    # end
  end

  ##### fix/todo: reuse between runner/loader - include w/ helper module?
  def dump_stats
    # todo: use %5d or similar to format string
    puts "Stats:"
    puts "  #{Event.count} events"
    puts "  #{Team.count} teams"
    puts "  #{Game.count} games"
  end

  def dump_props
    # todo: use %5 or similar to format string
    puts "Props:"
    Prop.order( 'created_at asc' ).all.each do |prop|
      puts "  #{prop.key} / #{prop.value} || #{prop.created_at}"
    end
  end
  
end # class Loader
end # module SportDB