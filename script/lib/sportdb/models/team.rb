module SportDB
  module Models


class Team < ActiveRecord::Base

  has_many :home_games, :class_name => 'Game', :foreign_key => 'team1_id'
  has_many :away_games, :class_name => 'Game', :foreign_key => 'team2_id'

  belongs_to :country, :class_name => 'Country', :foreign_key => 'country_id'  
  

  def self.create_from_ary!( teams, more_values={} )
    teams.each do |values|
      
      ## key & title required
      attr = {
        :key   => values[0],
        :title => values[1]
      }
      
      attr = attr.merge( more_values )
      
      ## check for optional values
      values[2..-1].each do |value|
        if value.is_a? Country
          attr[ :country_id ] = value.id
        elsif value.length == 3   ## assume its a tag (three latters)
          attr[ :tag ] = value
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
  
  
 end # module Models
end # module SportDB