module SportDB::Models

class Event < ActiveRecord::Base
  
  belongs_to :league
  belongs_to :season
  
  has_many :rounds, :order => 'pos'  # all (fix and flex) rounds
  has_many :games, :through => :rounds
  
  has_many :groups, :order => 'pos'
  
  has_many :event_teams, :class_name => 'EventTeam'
  has_many :teams, :through => :event_teams

  def add_teams_from_ary!( team_keys )
    team_keys.each do |team_key|
      team = Team.find_by_key!( team_key )
      self.teams << team
    end
  end
  
  ###########################
  ## convenience helpers

  def self.find_at_2012_13!
    self.find_by_key!( 'at.2012/13' )
  end
  
  def self.find_at_cup_2012_13!
    self.find_by_key!( 'at.cup.2012/13' )
  end
  
  def self.find_cl_2012_13!
    self.find_by_key!( 'cl.2012/13' )
  end
  
  def self.find_euro_2012!
    self.find_by_key!( 'euro.2012')
  end
  


end # class Event

end # module SportDB::Models