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

require 'active_record'   ## todo: add sqlite3? etc.

 
def setup_db( db_config )
        
  ActiveRecord::Base.establish_connection( db_config )
    
  ActiveRecord::Schema.define do

    
create_table :props do |t|
  t.string :key,   :null => false
  t.string :value, :null => false
  t.timestamps
end
    
create_table :teams do |t|
  t.string  :title, :null => false
  t.string  :title2
  t.string  :key,   :null => false   # import/export key
  t.string  :tag     # make it not null?  - three letter tag (short title)
  t.timestamps
end

add_index :teams, :key, :unique => true


create_table :events do |t|
  t.string      :title,    :null => false
  t.string      :key,      :null => false   # import/export key
  t.datetime    :start_at, :null => false
  t.timestamps  
end

add_index :events, :key, :unique => true 


create_table :rounds do |t|
  t.references :event,   :null => false
  t.string     :title,   :null => false
  t.string     :title2
  t.integer    :pos,     :null => false
  t.boolean    :playoff, :null => false, :default => false  # "regular" season (group) games or post-season (playoff) knockouts (k.o's)
  t.timestamps
end

add_index :rounds, :event_id  # fk event_id index


create_table :groups do |t|     # Teamgruppe (zB Gruppe A, Gruppe B, etc.)
  t.references :event,    :null => false
  t.string     :title,    :null => false
  t.integer    :pos,      :null => false
  t.timestamps
end

add_index :groups, :event_id  # fk event_id index


create_table :games do |t|
  t.references :round,    :null => false
  t.integer    :pos,      :null => false
  t.references :group      # note: group is optional
  t.references :team1,    :null => false
  t.references :team2,    :null => false
  t.datetime   :play_at,  :null => false
  t.boolean    :knockout, :null => false, :default => false
  t.boolean    :home,     :null => false, :default => true    # is team1 play at home (that is, at its home stadium)
  t.integer    :score1
  t.integer    :score2
  t.integer    :score3    # verlaengerung (opt)
  t.integer    :score4
  t.integer    :score5    # elfmeter (opt)
  t.integer    :score6
  t.references :next_game  # for hinspiel bei rueckspiel in knockout game
  t.references :prev_game
  t.string     :toto12x      # 1,2,X,nil  calculate on save
  t.string     :key          # import/export key
  t.timestamps
end

add_index :games, :key, :unique => true 
add_index :games, :round_id      # fk round_id index
add_index :games, :group_id      # fk group_id index
add_index :games, :next_game_id  # fk next_game_id index
add_index :games, :prev_game_id  # fk next_game_id index



# todo: remove id from join table (without extra fields)? why?? why not??
create_table :events_teams do |t|
  t.references :event, :null => false
  t.references :team,  :null => false
  t.timestamps
end

add_index :events_teams, [:event_id,:team_id], :unique => true 
add_index :events_teams, :event_id


create_table :groups_teams do |t|
  t.references :group, :null => false
  t.references :team,  :null => false
  t.timestamps
end

add_index :groups_teams, [:group_id,:team_id], :unique => true 
add_index :groups_teams, :group_id
    
  end # block Schema.define

  
end # method setup_db





DB_CONFIG = {
  :adapter  => 'sqlite3',
  :database => 'sport.db'
}

setup_db( DB_CONFIG )



class Prop < ActiveRecord::Base
end  # class Prop

Prop.create!( :key => 'db.schema.version', :value => '1' )


puts 'Done.'
