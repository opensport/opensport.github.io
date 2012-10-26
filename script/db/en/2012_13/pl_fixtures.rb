# encoding: utf-8

####################################################################
# generiert am  2012-10-16 19:52:25 +0200
#   using sportdb 0.4.0 on Ruby 1.9.2 (2011-07-09) [i386-mingw32]
####################################################################


###########################################
# Premier League 2012/13



ev = Event.find_by_key!( 'en.2012/13' )

chelsea            = Team.find_by_key!( 'chelsea' )
manunited          = Team.find_by_key!( 'manunited' )
mancity            = Team.find_by_key!( 'mancity' )
everton            = Team.find_by_key!( 'everton' )
tottenham          = Team.find_by_key!( 'tottenham' )
westbrom           = Team.find_by_key!( 'westbrom' )
arsenal            = Team.find_by_key!( 'arsenal' )
westham            = Team.find_by_key!( 'westham' )
fulham             = Team.find_by_key!( 'fulham' )
newcastle          = Team.find_by_key!( 'newcastle' )
swansea            = Team.find_by_key!( 'swansea' )
stoke              = Team.find_by_key!( 'stoke' )
sunderland         = Team.find_by_key!( 'sunderland' )
liverpool          = Team.find_by_key!( 'liverpool' )
wigan              = Team.find_by_key!( 'wigan' )
astonvilla         = Team.find_by_key!( 'astonvilla' )
southampton        = Team.find_by_key!( 'southampton' )
reading            = Team.find_by_key!( 'reading' )
norwich            = Team.find_by_key!( 'norwich' )
qpr                = Team.find_by_key!( 'qpr' )


r01 = Round.create!( event: ev, pos: 1, title: '1. Runde', start_at: Time.utc('2012-08-18 15:00'))
r02 = Round.create!( event: ev, pos: 2, title: '2. Runde', start_at: Time.utc('2012-08-25 00:00'))
r03 = Round.create!( event: ev, pos: 3, title: '3. Runde', start_at: Time.utc('2012-08-22 19:45'))
r04 = Round.create!( event: ev, pos: 4, title: '4. Runde', start_at: Time.utc('2012-09-15 12:45'))
r05 = Round.create!( event: ev, pos: 5, title: '5. Runde', start_at: Time.utc('2012-09-22 12:45'))
r06 = Round.create!( event: ev, pos: 6, title: '6. Runde', start_at: Time.utc('2012-09-29 12:45'))
r07 = Round.create!( event: ev, pos: 7, title: '7. Runde', start_at: Time.utc('2012-10-06 12:45'))
r08 = Round.create!( event: ev, pos: 8, title: '8. Runde', start_at: Time.utc('2012-10-20 12:45'))
r09 = Round.create!( event: ev, pos: 9, title: '9. Runde', start_at: Time.utc('2012-10-27 12:45'))


games01 = [
 [ arsenal,           [0,0], sunderland,        Time.utc('2012-08-18 15:00') ], 
 [ fulham,            [5,0], norwich,           Time.utc('2012-08-18 15:00') ], 
 [ qpr,               [0,5], swansea,           Time.utc('2012-08-18 15:00') ], 
 [ reading,           [1,1], stoke,             Time.utc('2012-08-18 15:00') ], 
 [ westbrom,          [3,0], liverpool,         Time.utc('2012-08-18 15:00') ], 
 [ westham,           [1,0], astonvilla,        Time.utc('2012-08-18 15:00') ], 
 [ newcastle,         [2,1], tottenham,         Time.utc('2012-08-18 17:30') ], 
 [ wigan,             [0,2], chelsea,           Time.utc('2012-08-19 13:30') ], 
 [ mancity,           [3,2], southampton,       Time.utc('2012-08-19 16:00') ], 
 [ everton,           [1,0], manunited,         Time.utc('2012-08-20 20:00') ], 
]

games02 = [
 [ sunderland,        [0,0], reading,           Time.utc('2012-08-25 00:00') ], 
 [ swansea,           [3,0], westham,           Time.utc('2012-08-25 12:45') ], 
 [ astonvilla,        [1,3], everton,           Time.utc('2012-08-25 15:00') ], 
 [ manunited,         [3,2], fulham,            Time.utc('2012-08-25 15:00') ], 
 [ norwich,           [1,1], qpr,               Time.utc('2012-08-25 15:00') ], 
 [ southampton,       [0,2], wigan,             Time.utc('2012-08-25 15:00') ], 
 [ tottenham,         [1,1], westbrom,          Time.utc('2012-08-25 15:00') ], 
 [ chelsea,           [2,0], newcastle,         Time.utc('2012-08-25 17:30') ], 
 [ stoke,             [0,0], arsenal,           Time.utc('2012-08-26 13:30') ], 
 [ liverpool,         [2,2], mancity,           Time.utc('2012-08-26 16:00') ], 
]

games03 = [
 [ chelsea,           [4,2], reading,           Time.utc('2012-08-22 19:45') ], 
 [ westham,           [3,0], fulham,            Time.utc('2012-09-01 12:45') ], 
 [ swansea,           [2,2], sunderland,        Time.utc('2012-09-01 15:00') ], 
 [ tottenham,         [1,1], norwich,           Time.utc('2012-09-01 15:00') ], 
 [ westbrom,          [2,0], everton,           Time.utc('2012-09-01 15:00') ], 
 [ wigan,             [2,2], stoke,             Time.utc('2012-09-01 15:00') ], 
 [ mancity,           [3,1], qpr,               Time.utc('2012-09-01 17:30') ], 
 [ liverpool,         [0,2], arsenal,           Time.utc('2012-09-02 13:30') ], 
 [ newcastle,         [1,1], astonvilla,        Time.utc('2012-09-02 16:00') ], 
 [ southampton,       [2,3], manunited,         Time.utc('2012-09-02 16:00') ], 
]

games04 = [
 [ norwich,           [0,0], westham,           Time.utc('2012-09-15 12:45') ], 
 [ arsenal,           [6,1], southampton,       Time.utc('2012-09-15 15:00') ], 
 [ astonvilla,        [2,0], swansea,           Time.utc('2012-09-15 15:00') ], 
 [ fulham,            [3,0], westbrom,          Time.utc('2012-09-15 15:00') ], 
 [ manunited,         [4,0], wigan,             Time.utc('2012-09-15 15:00') ], 
 [ qpr,               [0,0], chelsea,           Time.utc('2012-09-15 15:00') ], 
 [ stoke,             [1,1], mancity,           Time.utc('2012-09-15 15:00') ], 
 [ sunderland,        [1,1], liverpool,         Time.utc('2012-09-15 17:30') ], 
 [ reading,           [1,3], tottenham,         Time.utc('2012-09-16 16:00') ], 
 [ everton,           [2,2], newcastle,         Time.utc('2012-09-17 20:00') ], 
]

games05 = [
 [ swansea,           [0,3], everton,           Time.utc('2012-09-22 12:45') ], 
 [ chelsea,           [1,0], stoke,             Time.utc('2012-09-22 15:00') ], 
 [ southampton,       [4,1], astonvilla,        Time.utc('2012-09-22 15:00') ], 
 [ westbrom,          [1,0], reading,           Time.utc('2012-09-22 15:00') ], 
 [ westham,           [1,1], sunderland,        Time.utc('2012-09-22 15:00') ], 
 [ wigan,             [1,2], fulham,            Time.utc('2012-09-22 15:00') ], 
 [ liverpool,         [1,2], manunited,         Time.utc('2012-09-23 13:30') ], 
 [ newcastle,         [1,0], norwich,           Time.utc('2012-09-23 15:00') ], 
 [ mancity,           [1,1], arsenal,           Time.utc('2012-09-23 16:00') ], 
 [ tottenham,         [2,1], qpr,               Time.utc('2012-09-23 16:00') ], 
]

games06 = [
 [ arsenal,           [1,2], chelsea,           Time.utc('2012-09-29 12:45') ], 
 [ everton,           [3,1], southampton,       Time.utc('2012-09-29 15:00') ], 
 [ fulham,            [1,2], mancity,           Time.utc('2012-09-29 15:00') ], 
 [ norwich,           [2,5], liverpool,         Time.utc('2012-09-29 15:00') ], 
 [ reading,           [2,2], newcastle,         Time.utc('2012-09-29 15:00') ], 
 [ stoke,             [2,0], swansea,           Time.utc('2012-09-29 15:00') ], 
 [ sunderland,        [1,0], wigan,             Time.utc('2012-09-29 15:00') ], 
 [ manunited,         [2,3], tottenham,         Time.utc('2012-09-29 17:30') ], 
 [ astonvilla,        [1,1], westbrom,          Time.utc('2012-09-30 16:00') ], 
 [ qpr,               [1,2], westham,           Time.utc('2012-10-01 20:00') ], 
]

games07 = [
 [ mancity,           [3,0], sunderland,        Time.utc('2012-10-06 12:45') ], 
 [ chelsea,           [4,1], norwich,           Time.utc('2012-10-06 15:00') ], 
 [ swansea,           [2,2], reading,           Time.utc('2012-10-06 15:00') ], 
 [ westbrom,          [3,2], qpr,               Time.utc('2012-10-06 15:00') ], 
 [ wigan,             [2,2], everton,           Time.utc('2012-10-06 15:00') ], 
 [ westham,           [1,3], arsenal,           Time.utc('2012-10-06 17:30') ], 
 [ southampton,       [2,2], fulham,            Time.utc('2012-10-07 13:30') ], 
 [ liverpool,         [0,0], stoke,             Time.utc('2012-10-07 15:00') ], 
 [ tottenham,         [2,0], astonvilla,        Time.utc('2012-10-07 15:00') ], 
 [ newcastle,         [0,3], manunited,         Time.utc('2012-10-07 16:00') ], 
]

games08 = [
 [ tottenham,         [], chelsea,           Time.utc('2012-10-20 12:45') ], 
 [ fulham,            [], astonvilla,        Time.utc('2012-10-20 15:00') ], 
 [ liverpool,         [], reading,           Time.utc('2012-10-20 15:00') ], 
 [ manunited,         [], stoke,             Time.utc('2012-10-20 15:00') ], 
 [ swansea,           [], wigan,             Time.utc('2012-10-20 15:00') ], 
 [ westbrom,          [], mancity,           Time.utc('2012-10-20 15:00') ], 
 [ westham,           [], southampton,       Time.utc('2012-10-20 15:00') ], 
 [ norwich,           [], arsenal,           Time.utc('2012-10-20 17:30') ], 
 [ sunderland,        [], newcastle,         Time.utc('2012-10-21 13:30') ], 
 [ qpr,               [], everton,           Time.utc('2012-10-21 16:00') ], 
]

games09 = [
 [ everton,           [], liverpool,         Time.utc('2012-10-27 12:45') ], 
 [ arsenal,           [], qpr,               Time.utc('2012-10-27 15:00') ], 
 [ reading,           [], fulham,            Time.utc('2012-10-27 15:00') ], 
 [ stoke,             [], sunderland,        Time.utc('2012-10-27 15:00') ], 
 [ wigan,             [], westham,           Time.utc('2012-10-27 15:00') ], 
 [ mancity,           [], swansea,           Time.utc('2012-10-27 17:30') ], 
 [ astonvilla,        [], norwich,           Time.utc('2012-10-28 13:30') ], 
 [ newcastle,         [], westbrom,          Time.utc('2012-10-28 15:00') ], 
 [ southampton,       [], tottenham,         Time.utc('2012-10-28 15:00') ], 
 [ chelsea,           [], manunited,         Time.utc('2012-10-28 16:00') ], 
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

Prop.create!( key: 'db.en.2012/13.fixtures.version', value: '1' )
