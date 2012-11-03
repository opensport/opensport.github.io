module SportDB::Models

class City < ActiveRecord::Base
  self.table_name = 'cities'

  belongs_to :country, :class_name => 'Country', :foreign_key => 'country_id'

  has_many :teams, :class_name => 'Team', :foreign_key => 'city_id'

  
  def self.create_from_ary!( cities, more_values={} )
    cities.each do |values|
      
      ## todo/fix: split optional synonyms from title (see team for example)      
      
      ## key & title & country required
      attr = {
        key: values[0]
      }
      
      ## title (split of optional synonyms)
      # e.g. FC Bayern Muenchen|Bayern Muenchen|Bayern
      titles = values[1].split('|')
      
      attr[ :title ]    =  titles[0]
      ## add optional synonyms
      attr[ :synonyms ] =  titles[1..-1].join('|')  if titles.size > 1
      
      attr = attr.merge( more_values )
      
      ## check for optional values
      values[2..-1].each do |value|
        if value.is_a? Country
          attr[ :country_id ] = value.id
        else
          # issue warning: unknown type for value
        end
      end
      
      City.create!( attr )
    end # each city
  end

end # class Cities


end # module Models::SportDB