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

require 'sportdb/models'
require 'sportdb/version'
require 'sportdb/opts'
require 'sportdb/runner'

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

end  # module SportDB


SportDB.main if __FILE__ == $0