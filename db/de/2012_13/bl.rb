# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

######################################
## Deutsche Bundesliga 2012/13
##
## more info => ???


bl = Event.create!( :key      => 'de.2012/13',
                    :title    => 'Deutsche Bundesliga 2012/13',
                    :start_at => Time.cet('2012-07-21 00:00') )


bayern      = Team.find_by_key!( 'bayern' )
frankfurt   = Team.find_by_key!( 'frankfurt' )
schalke     = Team.find_by_key!( 'schalke' )
dortmund    = Team.find_by_key!( 'dortmund' )
hannover    = Team.find_by_key!( 'hannover' )
leverkusen  = Team.find_by_key!( 'leverkusen' )
duesseldorf = Team.find_by_key!( 'duesseldorf' )
hsv         = Team.find_by_key!( 'hsv' )
mainz       = Team.find_by_key!( 'mainz' )
mgladback   = Team.find_by_key!( 'mgladback' )
freiburg    = Team.find_by_key!( 'freiburg' )
bremen      = Team.find_by_key!( 'bremen' )
hoffenheim  = Team.find_by_key!( 'hoffenheim' )
nuernberg   = Team.find_by_key!( 'nuernberg' )
stuttgart   = Team.find_by_key!( 'stuttgart' )
augsburg    = Team.find_by_key!( 'augsburg' )
wolfsburg   = Team.find_by_key!( 'wolfsburg' )
fuerth      = Team.find_by_key!( 'fuerth' )



bl.teams << bayern
bl.teams << frankfurt
## todo: to be continued


bl07 = Round.create!( :event => bl, :pos => 7, :title => '7. Runde', :title2 => '06.+07. Okt 2012 ??' )


## todo: fix game dates

games_bl07 = [
  [ 1, augsburg,  [3,1], bremen,      Time.cet('2012-10-06 00:00') ], 
  [ 2, bayern,    [2,0], hoffenheim,  Time.cet('2012-10-06 00:00') ], 
  [ 3, schalke,   [3,0], wolfsburg,   Time.cet('2012-10-06 00:00') ], 
  [ 4, freiburg,  [3,0], nuernberg,   Time.cet('2012-10-06 00:00') ], 
  [ 5, mainz,     [1,0], duesseldorf, Time.cet('2012-10-06 00:00') ], 
  [ 6, fuerth,    [0,1], hsv,         Time.cet('2012-10-06 00:00') ], 
  [ 7, mgladbach, [2,0], frankfurt,   Time.cet('2012-10-06 00:00') ], 
  [ 8, stuttgart, [2,2], leverkusen,  Time.cet('2012-10-06 00:00') ], 
  [ 9, hannover,  [1,1], dortmund,    Time.cet('2012-10-06 00:00') ] 
]


Game.create_from_ary!( games_bl07, bl07 )

Prop.create!( :key => 'db.de.bl.2012/13.version', :value => '1' )