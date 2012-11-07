# encoding: utf-8

## todo: how to best extends country model?

module WorldDB::Models

  class Region
    has_many :teams, :through => :cities
  end # class Region

end # module WorldDB::Models

## moved to models/forward
# module SportDB::Models
#  Region = WorldDB::Models::Region
# end # module SportDB::Models
