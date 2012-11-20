# encoding: utf-8

module SportDB::Models

class Event < ActiveRecord::Base
  
  belongs_to :league
  belongs_to :season
  
  has_many :rounds, :order => 'pos'  # all (fix and flex) rounds
  has_many :games, :through => :rounds
  
  has_many :groups, :order => 'pos'
  
  has_many :event_teams, :class_name => 'EventTeam'
  has_many :teams, :through => :event_teams

  before_save :on_before_save

  def add_teams_from_ary!( team_keys )
    team_keys.each do |team_key|
      team = Team.find_by_key!( team_key )
      self.teams << team
    end
  end

  def on_before_save
    # event key is composite of league + season (e.g. at.2012/13) etc.
    self.key = "#{league.key}.#{season.key}"
  end
  
  def title
    league.title
  end
  
  def full_title   # includes season (e.g. year)
    "#{league.title} #{season.title}"
  end
  
  #####################
  ## convenience helper for text parser/reader

  ############
  ### fix/todo: share helper for all text readers/parsers- where to put it?  
  ###
  
  def title_esc_regex( title_unescaped )
      
      ##  escape regex special chars e.g. . to \. and ( to \( etc.
      # e.g. Benfica Lis.
      # e.g. Club Atlético Colón (Santa Fe)

      ## NB: cannot use Regexp.escape! will escape space '' to '\ '
      ## title = Regexp.escape( title_unescaped )
      title = title_unescaped.gsub( '.', '\.' )
      title = title.gsub( '(', '\(' )
      title = title.gsub( ')', '\)' )

      ##  match accented char with or without accents
      ##  add (ü|ue) etc.
      ## also make - optional change to (-| ) e.g. Blau-Weiss == Blau Weiss

      ## todo: add some more
      ## see http://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references  for more
      ##
      ##  reuse for all readers!
      
      alternatives = [
        ['-', '(-| )'],
        ['ß', '(ß|ss)'],
        ['æ', '(æ|ae)'],
        ['á', '(á|a)'],  ## e.g. Bogotá
        ['ã', '(ã|a)'],  ## e.g  São Paulo
        ['ä', '(ä|ae)'],  ## add a ?
        ['Ö', '(Ö|Oe)'], ## e.g. Österreich
        ['ö', '(ö|oe)'],  ## add o ?
        ['ó', '(ó|o)'],  ## e.g. Colón
        ['ü', '(ü|ue)'],  ## add u ?
        ['é', '(é|e)'],  ## e.g. Vélez
        ['ê', '(ê|e)'],  ## e.g. Grêmio
        ['ñ', '(ñ|n)'],  ## e.g. Porteño
        ['ú', '(ú|u)']  ## e.g. Fútbol
      ]
      
      alternatives.each do |alt|
        title = title.gsub( alt[0], alt[1] )
      end

      title
  end


  def known_teams_table
    
    ## build known teams table w/ synonyms e.g.
    #
    # [[ 'wolfsbrug', [ 'VfL Wolfsburg' ]],
    #  [ 'augsburg',  [ 'FC Augsburg', 'Augi2', 'Augi3' ]],
    #  [ 'stuttgart', [ 'VfB Stuttgart' ]] ]
 
    known_teams = []
     
    teams.each_with_index do |team,index|

      titles = []
      titles << team.title
      titles += team.synonyms.split('|') if team.synonyms.present?
      
      ## NB: sort here by length (largest goes first - best match)
      #  exclude code and key (key should always go last)
      titles = titles.sort { |left,right| right.length <=> left.length }
      
      ## escape for regex plus allow subs for special chars/accents
      titles = titles.map { |title| title_esc_regex( title )  }
      
      titles << team.code                  if team.code.present?
      titles << team.key
            
      known_teams << [ team.key, titles ]
      
      puts "  Team[#{index+1}] #{team.key} >#{titles.join('|')}<"
    end
    
    known_teams
  end # method known_teams_table
  
  ###########################
  ## convenience helpers

  include SportDB::Keys::EventKeys

  def self.find_at_2012_13!
    self.find_by_key!( AT_2012_13 )
  end
  
  def self.find_at_cup_2012_13!
    self.find_by_key!( AT_CUP_2012_13 )
  end
  
  def self.find_cl_2012_13!
    self.find_by_key!( CL_2012_13 )
  end
  
  def self.find_euro_2012!
    self.find_by_key!( EURO_2012 )
  end
  
  def self.find_world_2010!
    self.find_by_key!( WORLD_2010 )
  end
  
  def self.find_world_quali_euro_2012_13!
    self.find_by_key!( WORLD_QUALI_EURO_2012_13 )
  end
  
  def self.find_world_quali_america_2012_13!
    self.find_by_key!( WORLD_QUALI_AMERICA_2012_13 )
  end


end # class Event

end # module SportDB::Models