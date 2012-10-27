# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

######################################
## Oesterreichische Bundesliga 2012/13
##
## more info => http://bundesliga.at


bl = Event.create!( key:     'at_bl_2012_13',
                    title:   'Österr. Bundesliga 2012/13',
                    start_at: Time.cet('2012-07-21 00:00') )

## 10 Bundeliga Teams

bl_team_keys = [
   'salzburg',
   'rapid',
   'admira',
   'austria',
   'sturm',
   'ried',
   'wacker',
   'mattersburg',
   'neustadt',
   'wac' ]

bl.add_teams_from_ary!( bl_team_keys )

Prop.create!( key: 'db.at.2012/13.version', value: '1' )
