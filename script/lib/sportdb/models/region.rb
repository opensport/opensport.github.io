# encoding: utf-8

## todo: how to best extends country model?

module WorldDB::Models

  Team = SportDB::Models::Team

  class Region
    has_many :teams, :through => :cities
  end # class Region

end # module WorldDB::Models


module SportDB::Models
  Region = WorldDB::Models::Region
end # module SportDB::Models
