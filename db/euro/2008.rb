# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

#########################################################
##  Euro 2008  Austria-Switzerland (7 June - 29 June)

# see http://en.wikipedia.org/wiki/UEFA_Euro_2008
# or  http://de.wikipedia.org/wiki/Fußball-Europameisterschaft_2008


##  16 teams
##  31 games
##  22 days    

euro = Event.create!( key:     'euro.2008',
                      title:   'Euro 2008',
                      start_at: Time.cet( '2008-06-07 18:00' ))


euro.add_teams_from_ary!([
  'sui',
  'aut',
  'gre',
  'ned',
  'cro',
  'ita',
  'cze',
  'swe',
  'rou',
  'ger',
  'por',
  'esp',
  'pol',
  'fra',
  'tur',
  'rus'
])

euroa = Group.create!( event: euro, pos: 1, title: 'Gruppe A' )
eurob = Group.create!( event: euro, pos: 2, title: 'Gruppe B' )
euroc = Group.create!( event: euro, pos: 3, title: 'Gruppe C' )
eurod = Group.create!( event: euro, pos: 4, title: 'Gruppe D' )

euroa.add_teams_from_ary!(['sui', 'cze', 'por', 'tur'])

eurob.add_teams_from_ary!(['aut', 'cro', 'ger', 'pol'])

euroc.add_teams_from_ary!(['ned', 'ita', 'rou', 'fra'])

eurod.add_teams_from_ary!(['gre', 'swe', 'esp', 'rus'])


Prop.create!( key: 'db.euro.2008.version', value: '1' )




