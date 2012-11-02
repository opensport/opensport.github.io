module SportDB::Models


class Country < ActiveRecord::Base
  self.table_name = 'countries'
  
  has_many :cities, :class_name => 'City', :foreign_key => 'city_id'

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

end # class Country


end # module Models::SportDB
