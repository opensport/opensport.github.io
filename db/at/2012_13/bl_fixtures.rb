# encoding: utf-8

####################################################################
# generiert am  2012-10-27 17:26:25 +0200
#   using sportdb 0.4.2 on Ruby 1.9.3 (2012-02-16) [i686-linux]
####################################################################


###########################################
# Österr. Bundesliga 2012/13



ev = Event.find_by_key!( 'at_bl_2012_13' )

salzburg           = Team.find_by_key!( 'salzburg' )
rapid              = Team.find_by_key!( 'rapid' )
admira             = Team.find_by_key!( 'admira' )
austria            = Team.find_by_key!( 'austria' )
sturm              = Team.find_by_key!( 'sturm' )
ried               = Team.find_by_key!( 'ried' )
wacker             = Team.find_by_key!( 'wacker' )
mattersburg        = Team.find_by_key!( 'mattersburg' )
neustadt           = Team.find_by_key!( 'neustadt' )
wac                = Team.find_by_key!( 'wac' )


r01 = Round.create!( event: ev, pos: 1, title: '1. Runde', start_at: Time.utc('2012-07-21 16:00'))
r02 = Round.create!( event: ev, pos: 2, title: '2. Runde', start_at: Time.utc('2012-07-28 18:30'))
r03 = Round.create!( event: ev, pos: 3, title: '3. Runde', start_at: Time.utc('2012-08-04 18:30'))
r04 = Round.create!( event: ev, pos: 4, title: '4. Runde', start_at: Time.utc('2012-08-11 18:30'))
r05 = Round.create!( event: ev, pos: 5, title: '5. Runde', start_at: Time.utc('2012-08-18 18:30'))
r06 = Round.create!( event: ev, pos: 6, title: '6. Runde', start_at: Time.utc('2012-08-25 18:30'))
r07 = Round.create!( event: ev, pos: 7, title: '7. Runde', start_at: Time.utc('2012-09-01 18:30'))
r08 = Round.create!( event: ev, pos: 8, title: '8. Runde', start_at: Time.utc('2012-09-15 16:00'))
r09 = Round.create!( event: ev, pos: 9, title: '9. Runde', start_at: Time.utc('2012-09-22 16:00'))
r10 = Round.create!( event: ev, pos: 10, title: '10. Runde', start_at: Time.utc('2012-09-29 16:00'))
r11 = Round.create!( event: ev, pos: 11, title: '11. Runde', start_at: Time.utc('2012-10-06 16:00'))
r12 = Round.create!( event: ev, pos: 12, title: '12. Runde', start_at: Time.utc('2012-10-20 16:00'))
r13 = Round.create!( event: ev, pos: 13, title: '13. Runde', start_at: Time.utc('2012-10-27 16:00'))
r14 = Round.create!( event: ev, pos: 14, title: '14. Runde', start_at: Time.utc('2012-11-03 16:00'))
r15 = Round.create!( event: ev, pos: 15, title: '15. Runde', start_at: Time.utc('2012-11-10 16:00'))
r16 = Round.create!( event: ev, pos: 16, title: '16. Runde', start_at: Time.utc('2012-11-17 16:00'))
r17 = Round.create!( event: ev, pos: 17, title: '17. Runde', start_at: Time.utc('2012-11-24 16:00'))
r18 = Round.create!( event: ev, pos: 18, title: '18. Runde', start_at: Time.utc('2012-12-01 16:00'))
r19 = Round.create!( event: ev, pos: 19, title: '19. Runde', start_at: Time.utc('2012-12-08 16:00'))
r20 = Round.create!( event: ev, pos: 20, title: '20. Runde', start_at: Time.utc('2012-12-15 16:00'))


games01 = [
 [ sturm,             [0,2], salzburg,          Time.utc('2012-07-21 16:00') ], 
 [ mattersburg,       [2,0], neustadt,          Time.utc('2012-07-21 18:30') ], 
 [ rapid,             [4,0], wacker,            Time.utc('2012-07-21 18:30') ], 
 [ admira,            [0,2], ried,              Time.utc('2012-07-22 16:00') ], 
 [ wac,               [0,1], austria,           Time.utc('2012-07-25 18:30') ], 
]

games02 = [
 [ austria,           [0,1], sturm,             Time.utc('2012-07-28 18:30') ], 
 [ salzburg,          [3,2], mattersburg,       Time.utc('2012-07-28 18:30') ], 
 [ neustadt,          [0,1], rapid,             Time.utc('2012-07-28 18:30') ], 
 [ wacker,            [1,2], admira,            Time.utc('2012-07-29 16:00') ], 
 [ ried,              [0,2], wac,               Time.utc('2012-07-29 18:30') ], 
]

games03 = [
 [ mattersburg,       [3,1], sturm,             Time.utc('2012-08-04 18:30') ], 
 [ wac,               [0,2], salzburg,          Time.utc('2012-08-04 18:30') ], 
 [ rapid,             [0,3], austria,           Time.utc('2012-08-05 16:00') ], 
 [ ried,              [2,0], wacker,            Time.utc('2012-08-05 16:00') ], 
 [ admira,            [4,0], neustadt,          Time.utc('2012-08-05 18:30') ], 
]

games04 = [
 [ wacker,            [2,1], mattersburg,       Time.utc('2012-08-11 18:30') ], 
 [ sturm,             [4,1], wac,               Time.utc('2012-08-11 18:30') ], 
 [ salzburg,          [0,2], rapid,             Time.utc('2012-08-12 16:00') ], 
 [ neustadt,          [2,3], ried,              Time.utc('2012-08-12 16:00') ], 
 [ austria,           [1,0], admira,            Time.utc('2012-08-12 18:30') ], 
]

games05 = [
 [ rapid,             [3,0], sturm,             Time.utc('2012-08-18 18:30') ], 
 [ admira,            [4,4], salzburg,          Time.utc('2012-08-18 18:30') ], 
 [ wacker,            [2,3], neustadt,          Time.utc('2012-08-18 18:30') ], 
 [ wac,               [0,1], mattersburg,       Time.utc('2012-08-18 18:30') ], 
 [ ried,              [0,1], austria,           Time.utc('2012-08-19 16:00') ], 
]

games06 = [
 [ mattersburg,       [2,1], ried,              Time.utc('2012-08-25 18:30') ], 
 [ austria,           [2,0], wacker,            Time.utc('2012-08-25 18:30') ], 
 [ salzburg,          [1,1], neustadt,          Time.utc('2012-08-25 18:30') ], 
 [ sturm,             [3,2], admira,            Time.utc('2012-08-25 18:30') ], 
 [ wac,               [1,0], rapid,             Time.utc('2012-08-26 16:00') ], 
]

games07 = [
 [ wacker,            [0,4], salzburg,          Time.utc('2012-09-01 18:30') ], 
 [ neustadt,          [0,2], austria,           Time.utc('2012-09-01 18:30') ], 
 [ ried,              [0,1], sturm,             Time.utc('2012-09-01 18:30') ], 
 [ admira,            [1,1], wac,               Time.utc('2012-09-01 18:30') ], 
 [ rapid,             [3,0], mattersburg,       Time.utc('2012-09-02 16:00') ], 
]

games08 = [
 [ wac,               [6,0], neustadt,          Time.utc('2012-09-15 16:00') ], 
 [ sturm,             [3,0], wacker,            Time.utc('2012-09-15 18:30') ], 
 [ rapid,             [0,0], admira,            Time.utc('2012-09-15 18:30') ], 
 [ salzburg,          [1,1], ried,              Time.utc('2012-09-15 18:30') ], 
 [ mattersburg,       [2,4], austria,           Time.utc('2012-09-16 16:00') ], 
]

games09 = [
 [ admira,            [5,1], mattersburg,       Time.utc('2012-09-22 16:00') ], 
 [ austria,           [0,1], salzburg,          Time.utc('2012-09-22 18:30') ], 
 [ neustadt,          [1,1], sturm,             Time.utc('2012-09-22 18:30') ], 
 [ wacker,            [0,1], wac,               Time.utc('2012-09-22 18:30') ], 
 [ ried,              [0,2], rapid,             Time.utc('2012-09-23 16:30') ], 
]

games10 = [
 [ austria,           [1,1], wac,               Time.utc('2012-09-29 16:00') ], 
 [ ried,              [1,1], admira,            Time.utc('2012-09-29 18:30') ], 
 [ wacker,            [0,2], rapid,             Time.utc('2012-09-29 18:30') ], 
 [ neustadt,          [0,0], mattersburg,       Time.utc('2012-09-29 18:30') ], 
 [ salzburg,          [3,2], sturm,             Time.utc('2012-09-30 16:00') ], 
]

games11 = [
 [ wac,               [2,5], ried,              Time.utc('2012-10-06 16:00') ], 
 [ admira,            [4,1], wacker,            Time.utc('2012-10-06 18:30') ], 
 [ mattersburg,       [1,3], salzburg,          Time.utc('2012-10-06 18:30') ], 
 [ sturm,             [1,1], austria,           Time.utc('2012-10-07 16:00') ], 
 [ rapid,             [1,1], neustadt,          Time.utc('2012-10-07 18:30') ], 
]

games12 = [
 [ salzburg,          [4,1], wac,               Time.utc('2012-10-20 16:00') ], 
 [ neustadt,          [2,1], admira,            Time.utc('2012-10-20 18:30') ], 
 [ sturm,             [0,0], mattersburg,       Time.utc('2012-10-20 18:30') ], 
 [ wacker,            [1,0], ried,              Time.utc('2012-10-20 18:30') ], 
 [ austria,           [2,0], rapid,             Time.utc('2012-10-21 16:00') ], 
]

games13 = [
 [ ried,              [], neustadt,          Time.utc('2012-10-27 16:00') ], 
 [ mattersburg,       [], wacker,            Time.utc('2012-10-27 18:30') ], 
 [ admira,            [], austria,           Time.utc('2012-10-27 18:30') ], 
 [ wac,               [], sturm,             Time.utc('2012-10-27 18:30') ], 
 [ rapid,             [], salzburg,          Time.utc('2012-10-28 16:00') ], 
]

games14 = [
 [ neustadt,          [], wacker,            Time.utc('2012-11-03 16:00') ], 
 [ sturm,             [], rapid,             Time.utc('2012-11-03 18:30') ], 
 [ salzburg,          [], admira,            Time.utc('2012-11-03 18:30') ], 
 [ mattersburg,       [], wac,               Time.utc('2012-11-03 18:30') ], 
 [ austria,           [], ried,              Time.utc('2012-11-04 16:00') ], 
]

games15 = [
 [ admira,            [], sturm,             Time.utc('2012-11-10 16:00') ], 
 [ wacker,            [], austria,           Time.utc('2012-11-10 18:30') ], 
 [ ried,              [], mattersburg,       Time.utc('2012-11-10 18:30') ], 
 [ neustadt,          [], salzburg,          Time.utc('2012-11-11 16:00') ], 
 [ rapid,             [], wac,               Time.utc('2012-11-11 18:30') ], 
]

games16 = [
 [ salzburg,          [], wacker,            Time.utc('2012-11-17 16:00') ], 
 [ austria,           [], neustadt,          Time.utc('2012-11-17 16:00') ], 
 [ mattersburg,       [], rapid,             Time.utc('2012-11-17 16:00') ], 
 [ sturm,             [], ried,              Time.utc('2012-11-17 16:00') ], 
 [ wac,               [], admira,            Time.utc('2012-11-17 16:00') ], 
]

games17 = [
 [ wacker,            [], sturm,             Time.utc('2012-11-24 16:00') ], 
 [ admira,            [], rapid,             Time.utc('2012-11-24 16:00') ], 
 [ austria,           [], mattersburg,       Time.utc('2012-11-24 16:00') ], 
 [ ried,              [], salzburg,          Time.utc('2012-11-24 16:00') ], 
 [ neustadt,          [], wac,               Time.utc('2012-11-24 16:00') ], 
]

games18 = [
 [ sturm,             [], neustadt,          Time.utc('2012-12-01 16:00') ], 
 [ rapid,             [], ried,              Time.utc('2012-12-01 16:00') ], 
 [ salzburg,          [], austria,           Time.utc('2012-12-01 16:00') ], 
 [ mattersburg,       [], admira,            Time.utc('2012-12-01 16:00') ], 
 [ wac,               [], wacker,            Time.utc('2012-12-01 16:00') ], 
]

games19 = [
 [ mattersburg,       [], neustadt,          Time.utc('2012-12-08 16:00') ], 
 [ admira,            [], ried,              Time.utc('2012-12-08 16:00') ], 
 [ rapid,             [], wacker,            Time.utc('2012-12-08 16:00') ], 
 [ sturm,             [], salzburg,          Time.utc('2012-12-08 16:00') ], 
 [ wac,               [], austria,           Time.utc('2012-12-08 16:00') ], 
]

games20 = [
 [ salzburg,          [], mattersburg,       Time.utc('2012-12-15 16:00') ], 
 [ wacker,            [], admira,            Time.utc('2012-12-15 16:00') ], 
 [ austria,           [], sturm,             Time.utc('2012-12-15 16:00') ], 
 [ neustadt,          [], rapid,             Time.utc('2012-12-15 16:00') ], 
 [ ried,              [], wac,               Time.utc('2012-12-15 16:00') ], 
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
Game.create_from_ary!( games18, r18 )
Game.create_from_ary!( games19, r19 )
Game.create_from_ary!( games20, r20 )

Prop.create!( key: 'db.at_bl_2012_13.fixtures.version', value: '1' )
