# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

##################################
##  WM 2014 - Qualification Europe


world = Event.create!( key:      'wmq',
                       title:    'World Cup Quali. Europe 2012/13',
                       start_at: Time.cet( '2012-09-07 00:00' ),
                       league:  League.find_by_key!('wmq'),
                       season:  Season.find_by_key!('2012/13'))

Prop.create!( key: 'db.world.quali.2012/13.version', value: '1' )