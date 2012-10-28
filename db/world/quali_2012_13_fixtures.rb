# encoding: utf-8

####################################################################
# generiert am  2012-10-28 16:08:22 +0100
#   using sportdb 0.4.3 on Ruby 1.9.3 (2012-02-16) [i686-linux]
####################################################################


###########################################
# World Cup Quali. Europe 2012/13



ev = Event.find_by_key!( 'wmq' )

ger                = Team.find_by_key!( 'ger' )
irl                = Team.find_by_key!( 'irl' )
swe                = Team.find_by_key!( 'swe' )
fro                = Team.find_by_key!( 'fro' )
kaz                = Team.find_by_key!( 'kaz' )
aut                = Team.find_by_key!( 'aut' )


r01 = Round.create!( event: ev, pos: 1, title: '1. Runde', start_at: Time.utc('2012-09-07 15:00'))
r02 = Round.create!( event: ev, pos: 2, title: '2. Runde', start_at: Time.utc('2012-09-11 15:00'))
r03 = Round.create!( event: ev, pos: 3, title: '3. Runde', start_at: Time.utc('2012-10-12 20:45'))
r04 = Round.create!( event: ev, pos: 4, title: '4. Runde', start_at: Time.utc('2012-10-16 20:45'))
r05 = Round.create!( event: ev, pos: 5, title: '5. Runde', start_at: Time.utc('2013-03-22 15:00'))
r06 = Round.create!( event: ev, pos: 6, title: '6. Runde', start_at: Time.utc('2013-03-26 15:00'))
r07 = Round.create!( event: ev, pos: 7, title: '7. Runde', start_at: Time.utc('2013-06-07 15:00'))
r08 = Round.create!( event: ev, pos: 8, title: '8. Runde', start_at: Time.utc('2013-06-11 15:00'))
r09 = Round.create!( event: ev, pos: 9, title: '9. Runde', start_at: Time.utc('2013-09-06 15:00'))
r10 = Round.create!( event: ev, pos: 10, title: '10. Runde', start_at: Time.utc('2013-09-10 15:00'))
r11 = Round.create!( event: ev, pos: 11, title: '11. Runde', start_at: Time.utc('2013-10-11 15:00'))
r12 = Round.create!( event: ev, pos: 12, title: '12. Runde', start_at: Time.utc('2013-10-15 15:00'))


games01 = [
 [ ger,               [3,0], fro,               Time.utc('2012-09-07 15:00') ], 
 [ kaz,               [1,2], irl,               Time.utc('2012-09-07 15:00') ], 
]

games02 = [
 [ aut,               [1,2], ger,               Time.utc('2012-09-11 15:00') ], 
 [ swe,               [2,0], kaz,               Time.utc('2012-09-11 15:00') ], 
]

games03 = [
 [ irl,               [1,6], ger,               Time.utc('2012-10-12 20:45') ], 
 [ fro,               [1,2], swe,               Time.utc('2012-10-12 18:00') ], 
 [ kaz,               [0,0], aut,               Time.utc('2012-10-12 18:00') ], 
]

games04 = [
 [ ger,               [4,4], swe,               Time.utc('2012-10-16 20:45') ], 
 [ fro,               [1,4], irl,               Time.utc('2012-10-16 20:00') ], 
 [ aut,               [4,0], kaz,               Time.utc('2012-10-16 20:30') ], 
]

games05 = [
 [ kaz,               [], ger,               Time.utc('2013-03-22 15:00') ], 
 [ aut,               [], fro,               Time.utc('2013-03-22 15:00') ], 
 [ swe,               [], irl,               Time.utc('2013-03-22 15:00') ], 
]

games06 = [
 [ ger,               [], kaz,               Time.utc('2013-03-26 15:00') ], 
 [ irl,               [], aut,               Time.utc('2013-03-26 15:00') ], 
]

games07 = [
 [ irl,               [], fro,               Time.utc('2013-06-07 15:00') ], 
 [ aut,               [], swe,               Time.utc('2013-06-07 15:00') ], 
]

games08 = [
 [ swe,               [], fro,               Time.utc('2013-06-11 15:00') ], 
]

games09 = [
 [ ger,               [], aut,               Time.utc('2013-09-06 15:00') ], 
 [ kaz,               [], fro,               Time.utc('2013-09-06 15:00') ], 
 [ irl,               [], swe,               Time.utc('2013-09-06 15:00') ], 
]

games10 = [
 [ fro,               [], ger,               Time.utc('2013-09-10 15:00') ], 
 [ aut,               [], irl,               Time.utc('2013-09-10 15:00') ], 
 [ kaz,               [], swe,               Time.utc('2013-09-10 15:00') ], 
]

games11 = [
 [ ger,               [], irl,               Time.utc('2013-10-11 15:00') ], 
 [ fro,               [], kaz,               Time.utc('2013-10-11 15:00') ], 
 [ swe,               [], aut,               Time.utc('2013-10-11 15:00') ], 
]

games12 = [
 [ swe,               [], ger,               Time.utc('2013-10-15 15:00') ], 
 [ fro,               [], aut,               Time.utc('2013-10-15 15:00') ], 
 [ irl,               [], kaz,               Time.utc('2013-10-15 15:00') ], 
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

Prop.create!( key: 'db.wmq.fixtures.version', value: '1' )
