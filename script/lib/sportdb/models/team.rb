module SportDB::Models


class Team < ActiveRecord::Base

  has_many :home_games, :class_name => 'Game', :foreign_key => 'team1_id'
  has_many :away_games, :class_name => 'Game', :foreign_key => 'team2_id'

  ### fix - how to do it with has_many macro? possible??
  def games
    Game.where( 'team1_id = ? or team2_id = ?', id, id ).order( 'play_at' ).all
  end
  
  has_many :badges   # Winner, 2nd, Cupsieger, Aufsteiger, Absteiger, etc.

  belongs_to :country, :class_name => 'WorldDB::Models::Country', :foreign_key => 'country_id'
  belongs_to :city,    :class_name => 'WorldDB::Models::City',    :foreign_key => 'city_id'


  def self.create_from_ary!( teams, more_values={} )
    teams.each do |values|
      
      ## key & title required
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
        elsif value.is_a? City
          attr[ :city_id ] = value.id 
        elsif value.length == 3   ## assume its a tag (three letters e.g. ITA)
          attr[ :tag ] = value
        elsif value =~ /^city:/   ## city:
          value_city_key = value[5..-1]  ## cut off city: prefix
          value_city = City.find_by_key!( value_city_key )
          attr[ :city_id ] = value_city.id
        else
          attr[ :title2 ] = value
        end
      end

      ## check if exists
      team = Team.find_by_key( values[0] )
      if team.present?
        puts "*** warning team with key '#{values[0]}' exists; skipping create"
      else      
        Team.create!( attr )
      end
    end # each team
  end
  
end  # class Team
  

end # module SportDB::Models