###
# NB: for local testing run like:
#
# 1.9.x: ruby script/setup.rb  (add -Iscript ???)

# core and stlibs

require 'yaml'
require 'pp'
require 'logger'
require 'optparse'
require 'fileutils'

# rubygems




#######################
##### models begin


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

