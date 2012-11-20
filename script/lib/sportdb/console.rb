## for use to run with interactive ruby (irb)
##  e.g.  irb -r sportdb/console

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

## add some predefined shortcuts

##### some countries

at = Country.find_by_key( 'at' )
de = Country.find_by_key( 'de' )
en = Country.find_by_key( 'en' )

us = Country.find_by_key( 'us' )
ca = Country.find_by_key( 'ca' )
mx = Country.find_by_key( 'mx' )

#### some events

euro2008 = Event.find_by_key( 'euro.2008' )
euro2012 = Event.find_by_key( 'euro.2012' )
euro = euro2012  # add alias

bl = Event.find_by_key( 'de.2012/13' )
pl = Event.find_by_key( 'en.2012/13' )

### some club teams

barca   = Team.find_by_key( 'barcelona' )
manu = Team.find_by_key( 'manunited' )
mun = manunited = manu    # add alias
bayern  = Team.find_by_key( 'bayern' )
austria = Team.find_by_key( 'austria' )

### some national teams (three letter fifa codes)

esp = Team.find_by_key( 'esp' )
ger = Team.find_by_key( 'ger' )
aut = Team.find_by_key( 'aut' )

mex = Team.find_by_key( 'mex' )
arg = Team.find_by_key( 'arg' )

## turn on activerecord logging to console

ActiveRecord::Base.logger = Logger.new( STDOUT )
