# encoding: utf-8

#################################
## Copa Sudamericana 2012/13

###
## fix: time zone and times??


sud = Event.create!( key:      'copa.sud.2012/13',
                    title:    'Copa Sudamericana',
                    start_at: Time.cet( '2012-08-03 12:00' ),
                    league:   League.find_by_key!('copa.sud'),
                    season:   Season.find_by_key!('2012/13'))


team_keys_sud = [
 'tigre',
 'colon',
 'independiente',
 'saopaulo',
 'gremio',
 'palmeiras',
 'atleticogo',
 'udechile',
 'cduc',
 'millonarios',
 'quito',
 'emelec',
 'loja',
 'barcelonasc',
 'liverpoolfc',
 'porteno'
]


sud.add_teams_from_ary!( team_keys_sud )

Prop.create!( key: 'db.copa.sud.2012/13.version', value: '1' )
