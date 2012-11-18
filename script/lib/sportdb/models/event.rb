module SportDB::Models

class Event < ActiveRecord::Base
  
  belongs_to :league
  belongs_to :season
  
  has_many :rounds, :order => 'pos'  # all (fix and flex) rounds
  has_many :games, :through => :rounds
  
  has_many :groups, :order => 'pos'
  
  has_many :event_teams, :class_name => 'EventTeam'
  has_many :teams, :through => :event_teams

  before_save :on_before_save

  def add_teams_from_ary!( team_keys )
    team_keys.each do |team_key|
      team = Team.find_by_key!( team_key )
      self.teams << team
    end
  end

  def on_before_save
    # event key is composite of league + season (e.g. at.2012/13) etc.
    self.key = "#{league.key}.#{season.key}"
  end
  
  def title
    league.title
  end
  
  def full_title   # includes season (e.g. year)
    "#{league.title} #{season.title}"
  end
  
  ###########################
  ## convenience helpers

  include SportDB::Keys::EventKeys

  def self.find_at_2012_13!
    self.find_by_key!( AT_2012_13 )
  end
  
  def self.find_at_cup_2012_13!
    self.find_by_key!( AT_CUP_2012_13 )
  end
  
  def self.find_cl_2012_13!
    self.find_by_key!( CL_2012_13 )
  end
  
  def self.find_euro_2012!
    self.find_by_key!( EURO_2012 )
  end
  
  def self.find_world_2010!
    self.find_by_key!( WORLD_2010 )
  end
  
  def self.find_world_quali_euro_2012_13!
    self.find_by_key!( WORLD_QUALI_EURO_2012_13 )
  end
  
  def self.find_world_quali_america_2012_13!
    self.find_by_key!( WORLD_QUALI_AMERICA_2012_13 )
  end


end # class Event

end # module SportDB::Models