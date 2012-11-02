module SportDB::Models

class City < ActiveRecord::Base
  self.table_name = 'cities'

  belongs_to :country, :class_name => 'Country', :foreign_key => 'country_id'
  
  def self.create_from_ary!( cities )
    cities.each do |values|
      
      ## todo/fix: split optional synonyms from title (see team for example)      
      
      ## key & title & country required
      attr = {
        :key       => values[0],
        :title     => values[1],
        :country   => values[2]
      }
      
      City.create!( attr )
    end # each city
  end

end # class Cities


end # module Models::SportDB