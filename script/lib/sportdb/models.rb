module SportDB
  module Models

## todo: move each model in its own file;
##  use models folder
  
class Country < ActiveRecord::Base
  self.table_name = 'countries'

  def self.create_from_ary!( countries )
    countries.each do |values|
      
      ## key & title required
      attr = {
        :key   => values[0],
        :title => values[1],
        :tag   => values[2]
      }
      
      Country.create!( attr )
    end # each country
  end

end

class Team < ActiveRecord::Base

  has_many :home_games, :class_name => 'Game', :foreign_key => 'team1_id'
  has_many :away_games, :class_name => 'Game', :foreign_key => 'team2_id'

  belongs_to :country, :class_name => 'Country', :foreign_key => 'country_id'  
  

  def self.create_from_ary!( teams, more_values={} )
    teams.each do |values|
      
      ## key & title required
      attr = {
        :key   => values[0],
        :title => values[1]
      }
      
      attr = attr.merge( more_values )
      
      ## check for optional values
      values[2..-1].each do |value|
        if value.is_a? Country
          attr[ :country_id ] = value.id
        elsif value.length == 3   ## assume its a tag (three latters)
          attr[ :tag ] = value
        else
          attr[ :title2 ] = value
        end
      end

      ## check if exists
      team = Team.find_by_key( values[0] )
      if team.present?
        puts "*** warning team with key '#{values[0]}' exists; skipping create"
      else      
        Team.create!( attr )
      end
    end # each team
  end
  
end  # class Team


class Game < ActiveRecord::Base

  belongs_to :team1, :class_name => 'Team', :foreign_key => 'team1_id'
  belongs_to :team2, :class_name => 'Team', :foreign_key => 'team2_id'
  
  belongs_to :round
  belongs_to :group   # group is optional

  before_save :calc_toto12x


  def self.create_knockouts_from_ary!( games, round )
    Game.create_from_ary!( games, round, true )
  end

  def self.create_from_ary!( games, round, knockout=false )
    games.each do |values|
      Game.create!(
        :round     =>round,
        :pos       =>values[0],
        :team1     =>values[1],
        :score1    =>values[2][0],
        :score2    =>values[2][1],
        :score3    =>values[2][2],
        :score4    =>values[2][3],
        :score5    =>values[2][4],
        :score6    =>values[2][5],
        :team2     =>values[3],
        :play_at   =>values[4],
        :group     =>values[5],    # Note: group is optional (may be null/nil)
        :knockout  =>knockout )
    end # each games
  end

  def self.create_pairs_from_ary_for_group!( pairs, group )
    
    pairs.each do |pair|
      game1_attribs = {
        :round     =>pair[0][5],
        :pos       =>pair[0][0],
        :team1     =>pair[0][1],
        :score1    =>pair[0][2][0],
        :score2    =>pair[0][2][1],
        :team2     =>pair[0][3],
        :play_at   =>pair[0][4],
        :group     =>group }

      game2_attribs = {
        :round     =>pair[1][5],
        :pos       =>pair[1][0],
        :team1     =>pair[1][1],
        :score1    =>pair[1][2][0],
        :score2    =>pair[1][2][1],
        :team2     =>pair[1][3],
        :play_at   =>pair[1][4],
        :group     =>group }
  
      game1 = Game.create!( game1_attribs )
      game2 = Game.create!( game2_attribs )

      # linkup games
      game1.next_game_id = game2.id
      game1.save!
  
      game2.prev_game_id = game1.id
      game2.save!
    end # each pair
  end

  def self.create_knockout_pairs_from_ary!( pairs, round1, round2 )
    
    pairs.each do |pair|
      game1_attribs = {
        :round     =>round1,
        :pos       =>pair[0][0],
        :team1     =>pair[0][1],
        :score1    =>pair[0][2][0],
        :score2    =>pair[0][2][1],
        :team2     =>pair[0][3],
        :play_at   =>pair[0][4] }

      game2_attribs = {
        :round     =>round2,
        :pos       =>pair[1][0],
        :team1     =>pair[1][1],
        :score1    =>pair[1][2][0],
        :score2    =>pair[1][2][1],
        :score3    =>pair[1][2][2],
        :score4    =>pair[1][2][3],
        :score5    =>pair[1][2][4],
        :score6    =>pair[1][2][5],
        :team2     =>pair[1][3],
        :play_at   =>pair[1][4],
        :knockout  =>true }
  
      game1 = Game.create!( game1_attribs )
      game2 = Game.create!( game2_attribs )

      # linkup games
      game1.next_game_id = game2.id
      game1.save!
  
      game2.prev_game_id = game1.id
      game2.save!
    end # each pair
  end
      
  def calc_toto12x
    if score1.nil? || score2.nil?
      self.toto12x = nil
    elsif score1 == score2
      self.toto12x = 'X'
    elsif score1 > score2
      self.toto12x = '1'
    elsif score1 < score2
      self.toto12x = '2'
    end
  end

end # class Game


class Event < ActiveRecord::Base
  
  has_many :rounds, :order => 'pos'  # all (fix and flex) rounds
  
  has_many :groups, :order => 'pos'
  
  has_many :event_teams, :class_name => 'EventTeam'
  has_many :teams, :through => :event_teams

end # class Event


class EventTeam < ActiveRecord::Base
  self.table_name = 'events_teams'
  
  belongs_to :event
  belongs_to :team
end

class Group < ActiveRecord::Base
    
  has_many :games, :order => 'pos'
  belongs_to :event
  
  has_many :group_teams, :class_name => 'GroupTeam'
  has_many :teams, :through => :group_teams
      
end # class Group

class GroupTeam < ActiveRecord::Base
  self.table_name = 'groups_teams'
  
  belongs_to :group
  belongs_to :team
end


class Round < ActiveRecord::Base
    
  has_many :games, :order => 'pos'
  belongs_to :event
  
end # class Round


class Prop < ActiveRecord::Base
    
end  # class Prop


  end # module Models
end # module SportDB

