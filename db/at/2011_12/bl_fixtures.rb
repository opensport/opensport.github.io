# encoding: utf-8

####################################################################
# generiert am  2012-10-27 17:33:00 +0200
#   using sportdb 0.4.2 on Ruby 1.9.3 (2012-02-16) [i686-linux]
####################################################################


###########################################
# Österr. Bundesliga 2011/12



ev = Event.find_by_key!( 'at.2011/12' )

salzburg           = Team.find_by_key!( 'salzburg' )
rapid              = Team.find_by_key!( 'rapid' )
admira             = Team.find_by_key!( 'admira' )
austria            = Team.find_by_key!( 'austria' )
sturm              = Team.find_by_key!( 'sturm' )
ried               = Team.find_by_key!( 'ried' )
wacker             = Team.find_by_key!( 'wacker' )
mattersburg        = Team.find_by_key!( 'mattersburg' )
neustadt           = Team.find_by_key!( 'neustadt' )
ksv                = Team.find_by_key!( 'ksv' )


r29 = Round.create!( event: ev, pos: 29, title: '29. Runde', start_at: Time.utc('2012-04-07 16:00'))
r30 = Round.create!( event: ev, pos: 30, title: '30. Runde', start_at: Time.utc('2012-04-14 16:00'))
r31 = Round.create!( event: ev, pos: 31, title: '31. Runde', start_at: Time.utc('2012-04-21 16:00'))
r32 = Round.create!( event: ev, pos: 32, title: '32. Runde', start_at: Time.utc('2012-04-28 16:00'))
r33 = Round.create!( event: ev, pos: 33, title: '33. Runde', start_at: Time.utc('2012-05-05 16:00'))
r34 = Round.create!( event: ev, pos: 34, title: '34. Runde', start_at: Time.utc('2012-05-10 18:30'))
r35 = Round.create!( event: ev, pos: 35, title: '35. Runde', start_at: Time.utc('2012-05-13 16:00'))
r36 = Round.create!( event: ev, pos: 36, title: '36. Runde', start_at: Time.utc('2012-05-17 16:00'))


games29 = [
 [ salzburg,          [2,0], wacker,            Time.utc('2012-04-07 16:00') ], 
 [ ried,              [0,1], austria,           Time.utc('2012-04-07 18:30') ], 
 [ ksv,               [2,3], admira,            Time.utc('2012-04-07 18:30') ], 
 [ rapid,             [2,1], neustadt,          Time.utc('2012-04-07 18:30') ], 
 [ mattersburg,       [0,2], sturm,             Time.utc('2012-04-08 16:00') ], 
]

games30 = [
 [ neustadt,          [0,0], ksv,               Time.utc('2012-04-14 16:00') ], 
 [ admira,            [1,1], wacker,            Time.utc('2012-04-14 18:30') ], 
 [ sturm,             [2,2], salzburg,          Time.utc('2012-04-14 18:30') ], 
 [ ried,              [2,0], mattersburg,       Time.utc('2012-04-14 18:30') ], 
 [ austria,           [0,0], rapid,             Time.utc('2012-04-15 16:00') ], 
]

games31 = [
 [ wacker,            [2,0], neustadt,          Time.utc('2012-04-21 16:00') ], 
 [ ksv,               [1,0], austria,           Time.utc('2012-04-21 18:30') ], 
 [ mattersburg,       [1,2], admira,            Time.utc('2012-04-21 18:30') ], 
 [ salzburg,          [2,0], ried,              Time.utc('2012-04-21 18:30') ], 
 [ rapid,             [1,1], sturm,             Time.utc('2012-04-22 16:00') ], 
]

games32 = [
 [ austria,           [3,0], wacker,            Time.utc('2012-04-28 16:00') ], 
 [ neustadt,          [1,4], admira,            Time.utc('2012-04-28 18:30') ], 
 [ mattersburg,       [0,1], salzburg,          Time.utc('2012-04-28 18:30') ], 
 [ sturm,             [2,1], ksv,               Time.utc('2012-04-28 18:30') ], 
 [ ried,              [2,3], rapid,             Time.utc('2012-04-29 16:00') ], 
]

games33 = [
 [ neustadt,          [0,0], sturm,             Time.utc('2012-05-05 16:00') ], 
 [ admira,            [3,2], austria,           Time.utc('2012-05-05 18:30') ], 
 [ ksv,               [0,0], ried,              Time.utc('2012-05-05 18:30') ], 
 [ wacker,            [3,6], mattersburg,       Time.utc('2012-05-05 18:30') ], 
 [ rapid,             [0,1], salzburg,          Time.utc('2012-05-06 16:00') ], 
]

games34 = [
 [ salzburg,          [2,0], ksv,               Time.utc('2012-05-10 18:30') ], 
 [ austria,           [3,1], neustadt,          Time.utc('2012-05-10 20:30') ], 
 [ ried,              [1,1], wacker,            Time.utc('2012-05-10 20:30') ], 
 [ mattersburg,       [0,1], rapid,             Time.utc('2012-05-10 20:30') ], 
 [ sturm,             [0,3], admira,            Time.utc('2012-05-10 20:30') ], 
]

games35 = [
 [ ksv,               [0,2], rapid,             Time.utc('2012-05-13 16:00') ], 
 [ wacker,            [1,1], sturm,             Time.utc('2012-05-13 16:00') ], 
 [ neustadt,          [1,5], salzburg,          Time.utc('2012-05-13 16:00') ], 
 [ admira,            [1,1], ried,              Time.utc('2012-05-13 16:00') ], 
 [ austria,           [1,0], mattersburg,       Time.utc('2012-05-13 16:00') ], 
]

games36 = [
 [ rapid,             [2,0], wacker,            Time.utc('2012-05-17 16:00') ], 
 [ ried,              [2,2], neustadt,          Time.utc('2012-05-17 16:00') ], 
 [ mattersburg,       [2,0], ksv,               Time.utc('2012-05-17 16:00') ], 
 [ sturm,             [3,1], austria,           Time.utc('2012-05-17 16:00') ], 
 [ salzburg,          [2,0], admira,            Time.utc('2012-05-17 16:00') ], 
]



Game.create_from_ary!( games29, r29 )
Game.create_from_ary!( games30, r30 )
Game.create_from_ary!( games31, r31 )
Game.create_from_ary!( games32, r32 )
Game.create_from_ary!( games33, r33 )
Game.create_from_ary!( games34, r34 )
Game.create_from_ary!( games35, r35 )
Game.create_from_ary!( games36, r36 )

Prop.create!( key: 'db.at.2011/12.fixtures.version', value: '1' )
