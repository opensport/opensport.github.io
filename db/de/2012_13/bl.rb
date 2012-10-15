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


bl01 = Round.create!( event: bl, pos: 1, title: '1. Runde', start_at: Time.cet('2012-08-24'), title2: 'Fr,Sa,So 24.,25.,26. Aug 2012' )
bl02 = Round.create!( event: bl, pos: 2, title: '2. Runde', start_at: Time.cet('2012-08-31'), title2: 'Fr,Sa,So 31. Aug, 1.+2. Sep 2012' )
bl03 = Round.create!( event: bl, pos: 3, title: '3. Runde', start_at: Time.cet('2012-09-14'), title2: 'Fr,Sa,So 14.,15.,16. Sep 2012' )
bl04 = Round.create!( event: bl, pos: 4, title: '4. Runde', start_at: Time.cet('2012-09-21'), title2: 'Fr,Sa,So 21.,22.,23. Sep 2012' )



bl07 = Round.create!( event: bl, pos: 7, title: '7. Runde', start_at: Time.cet('2012-10-05'), title2: 'Fr,Sa,So 5.,6.,7. Okt 2012  ??' )
bl08 = Round.create!( event: bl, pos: 8, title: '8. Runde', start_at: Time.cet('2012-10-19'), title2: 'Fr,Sa,So 19.+21. Okt 2012 ??' )


## 24.08-26.08
games_bl01 = [
  [ dortmund,  [2,1], bremen,      Time.cet('2012-08-24 20:30') ],
  [ mgladbach, [2,1], hoffenheim,  Time.cet('2012-08-25 15:30') ],
  [ freiburg,  [1,1], mainz,       Time.cet('2012-08-25 15:30') ],
  [ augsburg,  [0,2], duesseldorf, Time.cet('2012-08-25 15:30') ],
  [ hsv,       [0,1], nuernberg,   Time.cet('2012-08-25 15:30') ],
  [ fuerth,    [0,3], bayern,      Time.cet('2012-08-25 15:30') ],
  [ frankfurt, [2,1], leverkusen,  Time.cet('2012-08-25 18:30') ],
  [ stuttgart, [0,1], wolfsburg,   Time.cet('2012-08-25 20:45') ],
  [ hannover,  [2,2], schalke,     Time.cet('2012-08-26 17:30') ]
]

## 31.08-02.09
games_bl02 = [
  [ mainz,       [0,1], fuerth,    Time.cet('2012-08-31 20:30') ],
  [ schalke,     [3,1], augsburg,  Time.cet('2012-09-01 15:30') ],
  [ leverkusen,  [2,0], freiburg,  Time.cet('2012-09-01 15:30') ],
  [ bremen,      [2,0], hsv,       Time.cet('2012-09-01 15:30') ],
  [ nuernberg,   [1,1], dortmund,  Time.cet('2012-09-01 15:30') ],
  [ hoffenheim,  [0,4], frankfurt, Time.cet('2012-09-01 15:30') ],
  [ duesseldorf, [0,0], mgladbach, Time.cet('2012-09-01 18:30') ],
  [ wolfsburg,   [0,4], hannover,  Time.cet('2012-09-02 15:30') ],
  [ bayern,      [6,1], stuttgart, Time.cet('2012-09-02 17:30') ]
]

## 14.09-16.09
games_bl03 = [
  [ augsburg,  [0,0], wolfsburg,   Time.cet('2012-09-14 20:30') ],                
  [ dortmund,  [3,0], leverkusen,  Time.cet('2012-09-15 15:30') ],                
  [ bayern,    [3,1], mainz,       Time.cet('2012-09-15 15:30') ],                
  [ mgladbach, [2,3], nuernberg,   Time.cet('2012-09-15 15:30') ],                
  [ stuttgart, [0,0], duesseldorf, Time.cet('2012-09-15 15:30') ],                
  [ hannover,  [3,2], bremen,      Time.cet('2012-09-15 15:30') ],                
  [ fuerth,    [0,2], schalke,     Time.cet('2012-09-15 18:30') ],                
  [ freiburg,  [5,3], hoffenheim,  Time.cet('2012-09-16 15:30') ],                
  [ frankfurt, [3,2], hsv,         Time.cet('2012-09-16 17:30') ]                
]

# 21.09-23.09
games_bl04 = [
  [ nuernberg,   [1,2], frankfurt, Time.cet('2012-09-21 20:30') ],                
  [ schalke,     [0,2], bayern,    Time.cet('2012-09-22 15:30') ],                
  [ wolfsburg,   [1,1], fuerth,    Time.cet('2012-09-22 15:30') ],                
  [ mainz,       [2,0], augsburg,  Time.cet('2012-09-22 15:30') ],                
  [ hsv,         [3,2], dortmund,  Time.cet('2012-09-22 15:30') ],                
  [ duesseldorf, [0,0], freiburg,  Time.cet('2012-09-22 15:30') ],                
  [ leverkusen,  [1,1], mgladbach, Time.cet('2012-09-23 15:30') ],                
  [ bremen,      [2,2], stuttgart, Time.cet('2012-09-23 17:30') ],                
  [ hoffenheim,  [3,1], hannover,  Time.cet('2012-09-23 17:30') ]                
]

# 25.09-26.09
games_bl05 = [
  [ Time.cet( '2012-09-25 20:00' ), frankfurt, [3,3],  dortmund    ],
  [ Time.cet( '2012-09-25 20:00' ), fuerth,    [0,2],  duesseldorf ],
  [ Time.cet( '2012-09-25 20:00' ), bayern,    [3,0],  wolfsburg   ],
  [ Time.cet( '2012-09-25 20:00' ), schalke,   [3,0],  mainz       ],
  [ Time.cet( '2012-09-26 20:00' ), hannover,  [4,1],  nuernberg   ],
  [ Time.cet( '2012-09-26 20:00' ), augsburg,  [1,3],  leverkusen  ],
  [ Time.cet( '2012-09-26 20:00' ), stuttgart, [0,3],  hoffenheim  ],
  [ Time.cet( '2012-09-26 20:00' ), mgladbach, [2,2],  hsv         ],
  [ Time.cet( '2012-09-26 20:00' ), freiburg,  [1,2],  bremen      ]
]

## todo: fix game dates



games_bl07 = [
  [ augsburg,  [3,1], bremen,      Time.cet('2012-10-06 00:00') ], 
  [ bayern,    [2,0], hoffenheim,  Time.cet('2012-10-06 00:00') ], 
  [ schalke,   [3,0], wolfsburg,   Time.cet('2012-10-06 00:00') ], 
  [ freiburg,  [3,0], nuernberg,   Time.cet('2012-10-06 00:00') ], 
  [ mainz,     [1,0], duesseldorf, Time.cet('2012-10-06 00:00') ], 
  [ fuerth,    [0,1], hsv,         Time.cet('2012-10-06 00:00') ], 
  [ mgladbach, [2,0], frankfurt,   Time.cet('2012-10-06 00:00') ], 
  [ stuttgart, [2,2], leverkusen,  Time.cet('2012-10-06 00:00') ], 
  [ hannover,  [1,1], dortmund,    Time.cet('2012-10-06 00:00') ] 
]

games_bl08 = [
  [ hoffenheim,  [], fuerth,    Time.cet('2012-10-19 00:00') ],                
  [ dortmund,    [], schalke,   Time.cet('2012-10-19 00:00') ],                
  [ leverkusen,  [], mainz,     Time.cet('2012-10-19 00:00') ],                
  [ wolfsburg,   [], freiburg,  Time.cet('2012-10-19 00:00') ],                
  [ frankfurt,   [], hannover,  Time.cet('2012-10-19 00:00') ],                
  [ duesseldorf, [], bayern,    Time.cet('2012-10-19 00:00') ],                
  [ bremen,      [], mgladbach, Time.cet('2012-10-19 00:00') ],                
  [ nuernberg,   [], augsburg,  Time.cet('2012-10-19 00:00') ],                
  [ hsv,         [], stuttgart, Time.cet('2012-10-19 00:00') ]                
]


=begin
games_bl08 = [
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ],                
  [  , [], , Time.cet('') ]                
]
=end

Game.create_from_ary!( games_bl01, bl01 )
Game.create_from_ary!( games_bl02, bl02 )
Game.create_from_ary!( games_bl03, bl03 )
Game.create_from_ary!( games_bl04, bl04 )


Game.create_from_ary!( games_bl07, bl07 )
Game.create_from_ary!( games_bl08, bl08 )

Prop.create!( key: 'db.de.bl.2012/13.version', value: '1' )