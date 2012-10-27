# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

######################################
## Deutsche Bundesliga 2012/13
##
## more info => http://bundesliga.de


bl = Event.create!( key:      'de.2012/13',
                    title:    'Deutsche Bundesliga 2012/13',
                    start_at: Time.cet('2012-07-21 00:00') )

bl_team_keys = [
  'bayern',
  'frankfurt',
  'schalke',
  'dortmund',
  'hannover',
  'leverkusen',
  'duesseldorf',
  'hsv',
  'mainz',
  'mgladbach',
  'freiburg',
  'bremen',
  'hoffenheim',
  'nuernberg',
  'stuttgart',
  'augsburg',
  'wolfsburg',
  'fuerth' ]

bl.add_teams_from_ary( bl_team_keys )


Prop.create!( key: 'db.de.2012/13.version', value: '1' )