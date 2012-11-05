# encoding: utf-8

## todo: how to best extends country model?

module WorldDB::Models

  Team   = SportDB::Models::Team
  League = SportDB::Models::League

  class Country
    has_many :teams,   :class_name => 'Team',   :foreign_key => 'country_id'
    has_many :leagues, :class_name => 'League', :foreign_key => 'country_id'
  end # class Country

end # module WorldDB::Models



module SportDB::Models
  Country = WorldDB::Models::Country
end # module SportDB::Models
