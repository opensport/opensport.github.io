
## todo: how to best extends city model?

module WorldDB::Models

  # add alias? why? why not? # is there a better way?
  #  - just include SportDB::Models  - why? why not?
  #  - just include once in loader??
  Team = SportDB::Models::Team

  class City
    has_many :teams, :class_name => 'Team', :foreign_key => 'city_id'
  end
end # module WorldDB::Models


module SportDB::Models
  City = WorldDB::Models::City
end # module SportDB::Models
