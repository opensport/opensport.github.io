###
# NB: for local testing run like:
#
# 1.9.x: ruby -Ilib lib/sportdb.rb

# core and stlibs

require 'yaml'
require 'pp'
require 'logger'
require 'optparse'
require 'fileutils'
require 'erb'

# rubygems

require 'active_record'   ## todo: add sqlite3? etc.
require 'worlddb'


# our own code

require 'sportdb/models/forward'
require 'sportdb/models/badge'
require 'sportdb/models/city'
require 'sportdb/models/country'
require 'sportdb/models/event'
require 'sportdb/models/event_team'
require 'sportdb/models/game'
require 'sportdb/models/group'
require 'sportdb/models/group_team'
require 'sportdb/models/league'
require 'sportdb/models/prop'
require 'sportdb/models/region'
require 'sportdb/models/round'
require 'sportdb/models/season'
require 'sportdb/models/team'
require 'sportdb/schema'       # NB: requires sportdb/models (include SportDB::Models)
require 'sportdb/utils'
require 'sportdb/loader'
require 'sportdb/reader'
require 'sportdb/templater'
require 'sportdb/version'
require 'sportdb/cli/opts'
require 'sportdb/cli/runner'

module SportDB

  def self.banner
    "sportdb #{VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
  end

  def self.root
    "#{File.expand_path( File.dirname(File.dirname(__FILE__)) )}"
  end

  def self.main
    Runner.new.run(ARGV)
  end
  

  # load built-in (that is, bundled within the gem) named seeds
  # - pass in an array of seed names e.g. [ 'cl/teams', 'cl/2012_13/cl' ] etc.

  def self.load( ary )
    loader = Loader.new
    ary.each do |name|
      loader.load_fixtures_builtin( name )
    end
  end

  # load built-in (that is, bundled within the gem) named plain text seeds
  # - pass in an array of pairs of event/seed names e.g. [['at.2012/13', 'at/2012_13/bl'], ['cl.2012/13', 'cl/2012_13/cl']] etc.

  def self.read( ary )
    reader = Reader.new
    ary.each do |rec|
      reader.load_fixtures_builtin( rec[0], rec[1] ) # event_key, name 
    end
  end

  
  class Deleter
    ## todo: move into its own file???    
    
    ## make models available in sportdb module by default with namespace
    #  e.g. lets you use Team instead of Models::Team 
    include SportDB::Models

    def run( args=[] )
      # for now delete all tables
      
      Team.delete_all
      Game.delete_all
      Event.delete_all
      EventTeam.delete_all
      Group.delete_all
      GroupTeam.delete_all
      Round.delete_all
      Badge.delete_all
      League.delete_all
      Season.delete_all
    end
    
  end
  
  # delete ALL records (use with care!)
  def self.delete!
    Deleter.new.run
  end # method delete!

  def self.load_plugins

    @found  ||= []
    @loaded ||= {}
    @files  ||= Gem.find_files( 'sportdb_plugin.rb' )

    puts "#{@files.size} plugin files found:"
    @files.each do |file|
      puts "  >#{file}<"
    end
    
    ## todo: extract version and name of gem?
    puts "normalized/match pattern:"
    @files.each do |file|
      if file =~ /sportdb-([a-z]+)-(\d\.\d.\d)/
        puts "  >#{$1}< | >#{$2}<"
        @found << file
      else
        puts "*** error: ignoring plugin script >#{file}< not matching gem naming pattern"
      end
    end
    
    @found.each do |file|
      begin
        puts  "loading plugin script #{file}"
        require file
      rescue LoadError => e
        puts "*** error loading plugin script #{file.inspect}: #{e.message}. skipping..."
      end
    end

  end

end  # module SportDB


SportDB::load_plugins

SportDB.main if __FILE__ == $0