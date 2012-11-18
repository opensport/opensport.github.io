# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

##################################
##  WM 2014 - Qualification Europe


world = Event.create!( league:  League.find_by_key!('wmq.euro'),
                       season:  Season.find_by_key!('2012/13'),
                       start_at: Time.cet( '2012-09-07 00:00' ) )

Prop.create!( key: 'db.world.quali.euro.2012/13.version', value: '1' )