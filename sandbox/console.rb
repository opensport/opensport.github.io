## for use to run with interactive ruby (irb)
##  e.g.  irb -r ./sandbox/console.rb

require 'sportdb'

# some ruby stdlibs

require 'logger'
require 'pp'   # pretty printer
require 'uri'
require 'json'
require 'yaml'


## shortcuts for models

Event   = SportDB::Models::Event
Team    = SportDB::Models::Team
Game    = SportDB::Models::Game
Group   = SportDB::Models::Group
Round   = SportDB::Models::Round
Season  = SportDB::Models::Season
League  = SportDB::Models::League
Badge   = SportDB::Models::Badge

# Tag     = WorldDB::Models::Tag
# Tagging = WorldDB::Models::Tagging
Country = WorldDB::Models::Country
Region  = WorldDB::Models::Region
City    = WorldDB::Models::City
Prop    = WorldDB::Models::Prop

## connect to db

DB_CONFIG = {
  adapter:  'sqlite3',
  database: 'sport.db'
}

pp DB_CONFIG
ActiveRecord::Base.establish_connection( DB_CONFIG )

## test drive

puts "Welcome to sport.db, version #{SportDB::VERSION} (world.db, version #{WorldDB::VERSION})!"
puts "  #{'%5d' % Event.count} events"
puts "  #{'%5d' % Team.count} teams"
puts "  #{'%5d' % Game.count} games"
puts "  #{'%5d' % City.count} cities"
puts "Ready."

## turn on activerecord logging to console

ActiveRecord::Base.logger = Logger.new( STDOUT )
