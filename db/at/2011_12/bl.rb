# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)


######################################
## Oesterreichische Bundesliga 2011/12
##
## more info => http://bundesliga.at

bl = Event.create!( key:      'at.2011/12',
                    title:    'Österr. Bundesliga 2011/12',
                    start_at: Time.cet('2012-04-07 00:00')  )

salzburg    = Team.find_by_key!( 'salzburg' )
rapid       = Team.find_by_key!( 'rapid' )
admira      = Team.find_by_key!( 'admira' )
austria     = Team.find_by_key!( 'austria' )
sturm       = Team.find_by_key!( 'sturm' )
ried        = Team.find_by_key!( 'ried' )
wacker      = Team.find_by_key!( 'wacker' )
mattersburg = Team.find_by_key!( 'mattersburg' )
neustadt    = Team.find_by_key!( 'neustadt' )
ksv         = Team.find_by_key!( 'ksv' )

bl.teams << salzburg
bl.teams << rapid
bl.teams << admira
bl.teams << austria
bl.teams << sturm
bl.teams << ried
bl.teams << wacker
bl.teams << mattersburg
bl.teams << neustadt
bl.teams << ksv


Prop.create!( key: 'db.at.bl.2011/12.version', value: '1' )
