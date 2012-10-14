module SportDB
  module Models

 
class Game < ActiveRecord::Base

  belongs_to :team1, :class_name => 'Team', :foreign_key => 'team1_id'
  belongs_to :team2, :class_name => 'Team', :foreign_key => 'team2_id'
  
  belongs_to :round
  belongs_to :group   # group is optional

  before_save :calc_toto12x


  def self.create_knockouts_from_ary!( games, round )
    Game.create_from_ary!( games, round, true )
  end

  def self.create_from_ary!( games, round, knockout=false )
    games.each_with_index do |values,index|
      
      ## check if first value (that is, values[0]) is a numeric/number
      ##  if NOT add pos automatic (counting from 1 to n)
      
      if values[0].kind_of? Numeric
        pos    = values[0]
        offset = 1
      else
        pos    = index
        offset = 0
      end
      
      Game.create!(
        :round     => round,
        :pos       => pos,
        :team1     => values[offset],
        :score1    => values[offset+1][0],
        :score2    => values[offset+1][1],
        :score3    => values[offset+1][2],
        :score4    => values[offset+1][3],
        :score5    => values[offset+1][4],
        :score6    => values[offset+1][5],
        :team2     => values[offset+2],
        :play_at   => values[offset+3],
        :group     => values[offset+4],    # Note: group is optional (may be null/nil)
        :knockout  => knockout )
    end # each games
  end

  def self.create_pairs_from_ary_for_group!( pairs, group )
    
    pairs.each do |pair|
      game1_attribs = {
        :round     =>pair[0][5],
        :pos       =>pair[0][0],
        :team1     =>pair[0][1],
        :score1    =>pair[0][2][0],
        :score2    =>pair[0][2][1],
        :team2     =>pair[0][3],
        :play_at   =>pair[0][4],
        :group     =>group }

      game2_attribs = {
        :round     =>pair[1][5],
        :pos       =>pair[1][0],
        :team1     =>pair[1][1],
        :score1    =>pair[1][2][0],
        :score2    =>pair[1][2][1],
        :team2     =>pair[1][3],
        :play_at   =>pair[1][4],
        :group     =>group }
  
      game1 = Game.create!( game1_attribs )
      game2 = Game.create!( game2_attribs )

      # linkup games
      game1.next_game_id = game2.id
      game1.save!
  
      game2.prev_game_id = game1.id
      game2.save!
    end # each pair
  end

  def self.create_knockout_pairs_from_ary!( pairs, round1, round2 )
    
    pairs.each do |pair|
      game1_attribs = {
        :round     =>round1,
        :pos       =>pair[0][0],
        :team1     =>pair[0][1],
        :score1    =>pair[0][2][0],
        :score2    =>pair[0][2][1],
        :team2     =>pair[0][3],
        :play_at   =>pair[0][4] }

      game2_attribs = {
        :round     =>round2,
        :pos       =>pair[1][0],
        :team1     =>pair[1][1],
        :score1    =>pair[1][2][0],
        :score2    =>pair[1][2][1],
        :score3    =>pair[1][2][2],
        :score4    =>pair[1][2][3],
        :score5    =>pair[1][2][4],
        :score6    =>pair[1][2][5],
        :team2     =>pair[1][3],
        :play_at   =>pair[1][4],
        :knockout  =>true }
  
      game1 = Game.create!( game1_attribs )
      game2 = Game.create!( game2_attribs )

      # linkup games
      game1.next_game_id = game2.id
      game1.save!
  
      game2.prev_game_id = game1.id
      game2.save!
    end # each pair
  end
      
  def calc_toto12x
    if score1.nil? || score2.nil?
      self.toto12x = nil
    elsif score1 == score2
      self.toto12x = 'X'
    elsif score1 > score2
      self.toto12x = '1'
    elsif score1 < score2
      self.toto12x = '2'
    end
  end

end # class Game



 end # module Models
end # module SportDB
