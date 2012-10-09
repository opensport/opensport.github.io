###
# NB: for local testing run like:
#
# 1.8.x: ruby -Ilib -rrubygems lib/sportdb.rb
# 1.9.x: ruby -Ilib lib/sportdb.rb

# core and stlibs

require 'yaml'
require 'pp'
require 'logger'
require 'optparse'
require 'fileutils'

# rubygems

require 'active_record'   ## todo: add sqlite3? etc.


# our own code

require 'sportdb/schema'
require 'sportdb/models'
require 'sportdb/utils'
require 'sportdb/loader'
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

  def self.load( args )
    Loader.new.run( args )
  end
  
  
  # delete ALL records (use with care!)
  def self.delete!
    Team.delete_all
    Game.delete_all
    Event.delete_all
    EventTeam.delete_all
    Group.delete_all
    GroupTeam.delete_all
    Round.delete_all
    Prop.delete_all
    Country.delete_all    
  end # method delete!

end  # module SportDB


SportDB.main if __FILE__ == $0