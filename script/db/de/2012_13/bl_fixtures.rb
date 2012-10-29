# encoding: utf-8

####################################################################
# generiert am  2012-10-27 17:39:53 +0200
#   using sportdb 0.4.2 on Ruby 1.9.3 (2012-02-16) [i686-linux]
####################################################################


###########################################
# Deutsche Bundesliga 2012/13



ev = Event.find_by_key!( 'de.2012/13' )

bayern             = Team.find_by_key!( 'bayern' )
schalke            = Team.find_by_key!( 'schalke' )
dortmund           = Team.find_by_key!( 'dortmund' )
frankfurt          = Team.find_by_key!( 'frankfurt' )
hannover           = Team.find_by_key!( 'hannover' )
leverkusen         = Team.find_by_key!( 'leverkusen' )
duesseldorf        = Team.find_by_key!( 'duesseldorf' )
hsv                = Team.find_by_key!( 'hsv' )
mainz              = Team.find_by_key!( 'mainz' )
mgladbach          = Team.find_by_key!( 'mgladbach' )
freiburg           = Team.find_by_key!( 'freiburg' )
bremen             = Team.find_by_key!( 'bremen' )
hoffenheim         = Team.find_by_key!( 'hoffenheim' )
nuernberg          = Team.find_by_key!( 'nuernberg' )
stuttgart          = Team.find_by_key!( 'stuttgart' )
augsburg           = Team.find_by_key!( 'augsburg' )
wolfsburg          = Team.find_by_key!( 'wolfsburg' )
fuerth             = Team.find_by_key!( 'fuerth' )


r01 = Round.create!( event: ev, pos: 1, title: '1. Runde', start_at: Time.utc('2012-08-24 20:30'))
r02 = Round.create!( event: ev, pos: 2, title: '2. Runde', start_at: Time.utc('2012-08-31 20:30'))
r03 = Round.create!( event: ev, pos: 3, title: '3. Runde', start_at: Time.utc('2012-09-14 20:30'))
r04 = Round.create!( event: ev, pos: 4, title: '4. Runde', start_at: Time.utc('2012-09-21 20:30'))
r05 = Round.create!( event: ev, pos: 5, title: '5. Runde', start_at: Time.utc('2012-09-25 20:00'))
r06 = Round.create!( event: ev, pos: 6, title: '6. Runde', start_at: Time.utc('2012-09-28 20:30'))
r07 = Round.create!( event: ev, pos: 7, title: '7. Runde', start_at: Time.utc('2012-10-05 20:30'))
r08 = Round.create!( event: ev, pos: 8, title: '8. Runde', start_at: Time.utc('2012-10-19 20:30'))
r09 = Round.create!( event: ev, pos: 9, title: '9. Runde', start_at: Time.utc('2012-10-26 20:30'))
r10 = Round.create!( event: ev, pos: 10, title: '10. Runde', start_at: Time.utc('2012-11-02 20:30'))
r11 = Round.create!( event: ev, pos: 11, title: '11. Runde', start_at: Time.utc('2012-11-09 20:30'))
r12 = Round.create!( event: ev, pos: 12, title: '12. Runde', start_at: Time.utc('2012-11-17 15:30'))
r13 = Round.create!( event: ev, pos: 13, title: '13. Runde', start_at: Time.utc('2012-11-23 20:30'))
r14 = Round.create!( event: ev, pos: 14, title: '14. Runde', start_at: Time.utc('2012-11-27 20:00'))
r15 = Round.create!( event: ev, pos: 15, title: '15. Runde', start_at: Time.utc('2012-11-30 20:30'))
r16 = Round.create!( event: ev, pos: 16, title: '16. Runde', start_at: Time.utc('2012-12-07 20:30'))
r17 = Round.create!( event: ev, pos: 17, title: '17. Runde', start_at: Time.utc('2012-12-15 15:30'))


games01 = [
 [ dortmund,          [2,1], bremen,            Time.utc('2012-08-24 20:30') ], 
 [ mgladbach,         [2,1], hoffenheim,        Time.utc('2012-08-25 15:30') ], 
 [ freiburg,          [1,1], mainz,             Time.utc('2012-08-25 15:30') ], 
 [ augsburg,          [0,2], duesseldorf,       Time.utc('2012-08-25 15:30') ], 
 [ hsv,               [0,1], nuernberg,         Time.utc('2012-08-25 15:30') ], 
 [ fuerth,            [0,3], bayern,            Time.utc('2012-08-25 15:30') ], 
 [ frankfurt,         [2,1], leverkusen,        Time.utc('2012-08-25 18:30') ], 
 [ stuttgart,         [0,1], wolfsburg,         Time.utc('2012-08-25 20:45') ], 
 [ hannover,          [2,2], schalke,           Time.utc('2012-08-26 17:30') ], 
]

games02 = [
 [ mainz,             [0,1], fuerth,            Time.utc('2012-08-31 20:30') ], 
 [ hoffenheim,        [0,4], frankfurt,         Time.utc('2012-09-01 15:30') ], 
 [ nuernberg,         [1,1], dortmund,          Time.utc('2012-09-01 15:30') ], 
 [ bremen,            [2,0], hsv,               Time.utc('2012-09-01 15:30') ], 
 [ schalke,           [3,1], augsburg,          Time.utc('2012-09-01 15:30') ], 
 [ leverkusen,        [2,0], freiburg,          Time.utc('2012-09-01 15:30') ], 
 [ duesseldorf,       [0,0], mgladbach,         Time.utc('2012-09-01 18:30') ], 
 [ wolfsburg,         [0,4], hannover,          Time.utc('2012-09-02 15:30') ], 
 [ bayern,            [6,1], stuttgart,         Time.utc('2012-09-02 17:30') ], 
]

games03 = [
 [ augsburg,          [0,0], wolfsburg,         Time.utc('2012-09-14 20:30') ], 
 [ stuttgart,         [0,0], duesseldorf,       Time.utc('2012-09-15 15:30') ], 
 [ mgladbach,         [2,3], nuernberg,         Time.utc('2012-09-15 15:30') ], 
 [ hannover,          [3,2], bremen,            Time.utc('2012-09-15 15:30') ], 
 [ dortmund,          [3,0], leverkusen,        Time.utc('2012-09-15 15:30') ], 
 [ bayern,            [3,1], mainz,             Time.utc('2012-09-15 15:30') ], 
 [ fuerth,            [0,2], schalke,           Time.utc('2012-09-15 18:30') ], 
 [ freiburg,          [5,3], hoffenheim,        Time.utc('2012-09-16 15:30') ], 
 [ frankfurt,         [3,2], hsv,               Time.utc('2012-09-16 17:30') ], 
]

games04 = [
 [ nuernberg,         [1,2], frankfurt,         Time.utc('2012-09-21 20:30') ], 
 [ wolfsburg,         [1,1], fuerth,            Time.utc('2012-09-22 15:30') ], 
 [ hsv,               [3,2], dortmund,          Time.utc('2012-09-22 15:30') ], 
 [ duesseldorf,       [0,0], freiburg,          Time.utc('2012-09-22 15:30') ], 
 [ schalke,           [0,2], bayern,            Time.utc('2012-09-22 15:30') ], 
 [ mainz,             [2,0], augsburg,          Time.utc('2012-09-22 15:30') ], 
 [ leverkusen,        [1,1], mgladbach,         Time.utc('2012-09-23 15:30') ], 
 [ bremen,            [2,2], stuttgart,         Time.utc('2012-09-23 17:30') ], 
 [ hoffenheim,        [3,1], hannover,          Time.utc('2012-09-23 17:30') ], 
]

games05 = [
 [ frankfurt,         [3,3], dortmund,          Time.utc('2012-09-25 20:00') ], 
 [ fuerth,            [0,2], duesseldorf,       Time.utc('2012-09-25 20:00') ], 
 [ bayern,            [3,0], wolfsburg,         Time.utc('2012-09-25 20:00') ], 
 [ schalke,           [3,0], mainz,             Time.utc('2012-09-25 20:00') ], 
 [ hannover,          [4,1], nuernberg,         Time.utc('2012-09-26 20:00') ], 
 [ augsburg,          [1,3], leverkusen,        Time.utc('2012-09-26 20:00') ], 
 [ stuttgart,         [0,3], hoffenheim,        Time.utc('2012-09-26 20:00') ], 
 [ mgladbach,         [2,2], hsv,               Time.utc('2012-09-26 20:00') ], 
 [ freiburg,          [1,2], bremen,            Time.utc('2012-09-26 20:00') ], 
]

games06 = [
 [ duesseldorf,       [2,2], schalke,           Time.utc('2012-09-28 20:30') ], 
 [ nuernberg,         [0,2], stuttgart,         Time.utc('2012-09-29 15:30') ], 
 [ bremen,            [0,2], bayern,            Time.utc('2012-09-29 15:30') ], 
 [ hoffenheim,        [0,0], augsburg,          Time.utc('2012-09-29 15:30') ], 
 [ hsv,               [1,0], hannover,          Time.utc('2012-09-29 15:30') ], 
 [ leverkusen,        [2,0], fuerth,            Time.utc('2012-09-29 15:30') ], 
 [ dortmund,          [5,0], mgladbach,         Time.utc('2012-09-29 18:30') ], 
 [ frankfurt,         [2,1], freiburg,          Time.utc('2012-09-30 15:30') ], 
 [ wolfsburg,         [0,2], mainz,             Time.utc('2012-09-30 17:30') ], 
]

games07 = [
 [ augsburg,          [3,1], bremen,            Time.utc('2012-10-05 20:30') ], 
 [ bayern,            [2,0], hoffenheim,        Time.utc('2012-10-06 15:30') ], 
 [ schalke,           [3,0], wolfsburg,         Time.utc('2012-10-06 15:30') ], 
 [ mainz,             [1,0], duesseldorf,       Time.utc('2012-10-06 15:30') ], 
 [ fuerth,            [0,1], hsv,               Time.utc('2012-10-06 15:30') ], 
 [ freiburg,          [3,0], nuernberg,         Time.utc('2012-10-06 15:30') ], 
 [ mgladbach,         [2,0], frankfurt,         Time.utc('2012-10-07 15:30') ], 
 [ hannover,          [1,1], dortmund,          Time.utc('2012-10-07 17:30') ], 
 [ stuttgart,         [2,2], leverkusen,        Time.utc('2012-10-07 17:30') ], 
]

games08 = [
 [ hoffenheim,        [], fuerth,            Time.utc('2012-10-19 20:30') ], 
 [ frankfurt,         [], hannover,          Time.utc('2012-10-20 15:30') ], 
 [ duesseldorf,       [], bayern,            Time.utc('2012-10-20 15:30') ], 
 [ dortmund,          [], schalke,           Time.utc('2012-10-20 15:30') ], 
 [ leverkusen,        [], mainz,             Time.utc('2012-10-20 15:30') ], 
 [ wolfsburg,         [], freiburg,          Time.utc('2012-10-20 15:30') ], 
 [ bremen,            [], mgladbach,         Time.utc('2012-10-20 18:30') ], 
 [ nuernberg,         [], augsburg,          Time.utc('2012-10-21 15:30') ], 
 [ hsv,               [], stuttgart,         Time.utc('2012-10-21 17:30') ], 
]

games09 = [
 [ augsburg,          [], hsv,               Time.utc('2012-10-26 20:30') ], 
 [ fuerth,            [], bremen,            Time.utc('2012-10-27 15:30') ], 
 [ freiburg,          [], dortmund,          Time.utc('2012-10-27 15:30') ], 
 [ schalke,           [], nuernberg,         Time.utc('2012-10-27 15:30') ], 
 [ mainz,             [], hoffenheim,        Time.utc('2012-10-27 15:30') ], 
 [ duesseldorf,       [], wolfsburg,         Time.utc('2012-10-27 15:30') ], 
 [ stuttgart,         [], frankfurt,         Time.utc('2012-10-28 15:30') ], 
 [ hannover,          [], mgladbach,         Time.utc('2012-10-28 17:30') ], 
 [ bayern,            [], leverkusen,        Time.utc('2012-10-28 17:30') ], 
]

games10 = [
 [ frankfurt,         [], fuerth,            Time.utc('2012-11-02 20:30') ], 
 [ hannover,          [], augsburg,          Time.utc('2012-11-03 15:30') ], 
 [ nuernberg,         [], wolfsburg,         Time.utc('2012-11-03 15:30') ], 
 [ hoffenheim,        [], schalke,           Time.utc('2012-11-03 15:30') ], 
 [ mgladbach,         [], freiburg,          Time.utc('2012-11-03 15:30') ], 
 [ dortmund,          [], stuttgart,         Time.utc('2012-11-03 15:30') ], 
 [ hsv,               [], bayern,            Time.utc('2012-11-03 18:30') ], 
 [ leverkusen,        [], duesseldorf,       Time.utc('2012-11-04 15:30') ], 
 [ bremen,            [], mainz,             Time.utc('2012-11-04 17:30') ], 
]

games11 = [
 [ mainz,             [], nuernberg,         Time.utc('2012-11-09 20:30') ], 
 [ schalke,           [], bremen,            Time.utc('2012-11-10 15:30') ], 
 [ wolfsburg,         [], leverkusen,        Time.utc('2012-11-10 15:30') ], 
 [ augsburg,          [], dortmund,          Time.utc('2012-11-10 15:30') ], 
 [ freiburg,          [], hsv,               Time.utc('2012-11-10 15:30') ], 
 [ bayern,            [], frankfurt,         Time.utc('2012-11-10 15:30') ], 
 [ duesseldorf,       [], hoffenheim,        Time.utc('2012-11-10 15:30') ], 
 [ stuttgart,         [], hannover,          Time.utc('2012-11-11 17:30') ], 
 [ fuerth,            [], mgladbach,         Time.utc('2012-11-11 17:30') ], 
]

games12 = [
 [ frankfurt,         [], augsburg,          Time.utc('2012-11-17 15:30') ], 
 [ hsv,               [], mainz,             Time.utc('2012-11-17 15:30') ], 
 [ nuernberg,         [], bayern,            Time.utc('2012-11-17 15:30') ], 
 [ hannover,          [], freiburg,          Time.utc('2012-11-17 15:30') ], 
 [ dortmund,          [], fuerth,            Time.utc('2012-11-17 15:30') ], 
 [ mgladbach,         [], stuttgart,         Time.utc('2012-11-17 15:30') ], 
 [ leverkusen,        [], schalke,           Time.utc('2012-11-17 18:30') ], 
 [ bremen,            [], duesseldorf,       Time.utc('2012-11-18 15:30') ], 
 [ hoffenheim,        [], wolfsburg,         Time.utc('2012-11-18 17:30') ], 
]

games13 = [
 [ duesseldorf,       [], hsv,               Time.utc('2012-11-23 20:30') ], 
 [ wolfsburg,         [], bremen,            Time.utc('2012-11-24 15:30') ], 
 [ schalke,           [], frankfurt,         Time.utc('2012-11-24 15:30') ], 
 [ bayern,            [], hannover,          Time.utc('2012-11-24 15:30') ], 
 [ mainz,             [], dortmund,          Time.utc('2012-11-24 15:30') ], 
 [ fuerth,            [], nuernberg,         Time.utc('2012-11-24 15:30') ], 
 [ freiburg,          [], stuttgart,         Time.utc('2012-11-25 15:30') ], 
 [ hoffenheim,        [], leverkusen,        Time.utc('2012-11-25 17:30') ], 
 [ augsburg,          [], mgladbach,         Time.utc('2012-11-25 17:30') ], 
]

games14 = [
 [ hsv,               [], schalke,           Time.utc('2012-11-27 20:00') ], 
 [ frankfurt,         [], mainz,             Time.utc('2012-11-27 20:00') ], 
 [ dortmund,          [], duesseldorf,       Time.utc('2012-11-27 20:00') ], 
 [ hannover,          [], fuerth,            Time.utc('2012-11-27 20:00') ], 
 [ freiburg,          [], bayern,            Time.utc('2012-11-28 20:00') ], 
 [ nuernberg,         [], hoffenheim,        Time.utc('2012-11-28 20:00') ], 
 [ bremen,            [], leverkusen,        Time.utc('2012-11-28 20:00') ], 
 [ mgladbach,         [], wolfsburg,         Time.utc('2012-11-28 20:00') ], 
 [ stuttgart,         [], augsburg,          Time.utc('2012-11-28 20:00') ], 
]

games15 = [
 [ duesseldorf,       [], frankfurt,         Time.utc('2012-11-30 20:30') ], 
 [ schalke,           [], mgladbach,         Time.utc('2012-12-01 15:30') ], 
 [ leverkusen,        [], nuernberg,         Time.utc('2012-12-01 15:30') ], 
 [ mainz,             [], hannover,          Time.utc('2012-12-01 15:30') ], 
 [ augsburg,          [], freiburg,          Time.utc('2012-12-01 15:30') ], 
 [ fuerth,            [], stuttgart,         Time.utc('2012-12-01 15:30') ], 
 [ bayern,            [], dortmund,          Time.utc('2012-12-01 18:30') ], 
 [ hoffenheim,        [], bremen,            Time.utc('2012-12-02 15:30') ], 
 [ wolfsburg,         [], hsv,               Time.utc('2012-12-02 17:30') ], 
]

games16 = [
 [ hsv,               [], hoffenheim,        Time.utc('2012-12-07 20:30') ], 
 [ nuernberg,         [], duesseldorf,       Time.utc('2012-12-08 15:30') ], 
 [ stuttgart,         [], schalke,           Time.utc('2012-12-08 15:30') ], 
 [ freiburg,          [], fuerth,            Time.utc('2012-12-08 15:30') ], 
 [ augsburg,          [], bayern,            Time.utc('2012-12-08 15:30') ], 
 [ dortmund,          [], wolfsburg,         Time.utc('2012-12-08 15:30') ], 
 [ frankfurt,         [], bremen,            Time.utc('2012-12-08 18:30') ], 
 [ mgladbach,         [], mainz,             Time.utc('2012-12-09 15:30') ], 
 [ hannover,          [], leverkusen,        Time.utc('2012-12-09 17:30') ], 
]

games17 = [
 [ bayern,            [], mgladbach,         Time.utc('2012-12-15 15:30') ], 
 [ bremen,            [], nuernberg,         Time.utc('2012-12-15 15:30') ], 
 [ duesseldorf,       [], hannover,          Time.utc('2012-12-15 15:30') ], 
 [ wolfsburg,         [], frankfurt,         Time.utc('2012-12-15 15:30') ], 
 [ leverkusen,        [], hsv,               Time.utc('2012-12-15 15:30') ], 
 [ schalke,           [], freiburg,          Time.utc('2012-12-15 15:30') ], 
 [ fuerth,            [], augsburg,          Time.utc('2012-12-15 15:30') ], 
 [ mainz,             [], stuttgart,         Time.utc('2012-12-15 15:30') ], 
 [ hoffenheim,        [], dortmund,          Time.utc('2012-12-15 15:30') ], 
]



Game.create_from_ary!( games01, r01 )
Game.create_from_ary!( games02, r02 )
Game.create_from_ary!( games03, r03 )
Game.create_from_ary!( games04, r04 )
Game.create_from_ary!( games05, r05 )
Game.create_from_ary!( games06, r06 )
Game.create_from_ary!( games07, r07 )
Game.create_from_ary!( games08, r08 )
Game.create_from_ary!( games09, r09 )
Game.create_from_ary!( games10, r10 )
Game.create_from_ary!( games11, r11 )
Game.create_from_ary!( games12, r12 )
Game.create_from_ary!( games13, r13 )
Game.create_from_ary!( games14, r14 )
Game.create_from_ary!( games15, r15 )
Game.create_from_ary!( games16, r16 )
Game.create_from_ary!( games17, r17 )

Prop.create!( key: 'db.de.2012/13.fixtures.version', value: '1' )
