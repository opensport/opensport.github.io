
### Build a new sport.db
##  Update all fixtures

require 'pp'
require 'sportdb'


BUILD_DIR = "./build"
DATA_DIR  = "."


SPORT_DB_PATH = "#{BUILD_DIR}/sport.db"

DB_CONFIG = {
  adapter:  'sqlite3',
  database:  SPORT_DB_PATH
}


task :default => 'release'

directory BUILD_DIR

desc "clean db build for release"
task :release => [BUILD_DIR, :clean,:create,:import] do
  puts "hello from sport.db release build script"
end

task :clean do
  rm SPORT_DB_PATH if File.exists?( SPORT_DB_PATH )
end

task :env do
  pp DB_CONFIG
  ActiveRecord::Base.establish_connection( DB_CONFIG )
end

desc "create db schema"
task :create => [:env, :clean] do
  WorldDB.create
  WorldDB.read_all  # populate world tables
  SportDB.create
end


desc "import db seeds from folder '#{DATA_DIR}'"
task :import => :env do

  SportDB.load( SportDB.fixtures_rb )
  SportDB.read( SportDB.fixtures_txt )

  SportDB.stats

end


=begin

file "#{DB_ROOT}/at/2012_13/bl_fixtures.rb" => "#{DB_ROOT}/at/2012_13/bl.txt" do
  sh "sportdb --generate -e at.2012/13 #{DB_ROOT}/at/2012_13/bl_fixtures"
end

file "#{DB_ROOT}/at/2012_13/cup_fixtures.rb" => "#{DB_ROOT}/at/2012_13/cup.txt" do
  sh "sportdb --generate -e at.cup.2012/13 #{DB_ROOT}/at/2012_13/cup_fixtures"
end

file "#{DB_ROOT}/de/2012_13/bl_fixtures.rb" => "#{DB_ROOT}/de/2012_13/bl.txt" do
  sh "sportdb --generate -e de.2012/13 #{DB_ROOT}/de/2012_13/bl_fixtures"
end

file "#{DB_ROOT}/en/2012_13/pl_fixtures.rb" => "#{DB_ROOT}/en/2012_13/pl.txt" do
  sh "sportdb --generate -e en.2012/13 #{DB_ROOT}/en/2012_13/pl_fixtures"
end

=end