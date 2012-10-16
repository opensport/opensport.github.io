# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

######################################
## Deutsche Bundesliga 2012/13
##
## more info => http://bundesliga.de


bl = Event.create!( key:      'de.2012/13',
                    title:    'Deutsche Bundesliga 2012/13',
                    start_at: Time.cet('2012-07-21 00:00') )


bayern      = Team.find_by_key!( 'bayern' )
frankfurt   = Team.find_by_key!( 'frankfurt' )
schalke     = Team.find_by_key!( 'schalke' )
dortmund    = Team.find_by_key!( 'dortmund' )
hannover    = Team.find_by_key!( 'hannover' )
leverkusen  = Team.find_by_key!( 'leverkusen' )
duesseldorf = Team.find_by_key!( 'duesseldorf' )
hsv         = Team.find_by_key!( 'hsv' )
mainz       = Team.find_by_key!( 'mainz' )
mgladbach   = Team.find_by_key!( 'mgladbach' )
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
bl.teams << schalke
bl.teams << dortmund
bl.teams << hannover
bl.teams << leverkusen
bl.teams << duesseldorf
bl.teams << hsv
bl.teams << mainz
bl.teams << mgladbach
bl.teams << freiburg
bl.teams << bremen
bl.teams << hoffenheim
bl.teams << nuernberg
bl.teams << stuttgart
bl.teams << augsburg
bl.teams << wolfsburg
bl.teams << fuerth


Prop.create!( key: 'db.de.bl.2012/13.version', value: '1' )