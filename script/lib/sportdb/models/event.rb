module SportDB
  module Models


class Event < ActiveRecord::Base
  
  has_many :rounds, :order => 'pos'  # all (fix and flex) rounds
  
  has_many :groups, :order => 'pos'
  
  has_many :event_teams, :class_name => 'EventTeam'
  has_many :teams, :through => :event_teams

end # class Event


  
 end # module Models
end # module SportDB