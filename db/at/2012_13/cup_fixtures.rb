# encoding: utf-8

####################################################################
# generiert am  2012-10-28 16:08:20 +0100
#   using sportdb 0.4.3 on Ruby 1.9.3 (2012-02-16) [i686-linux]
####################################################################


###########################################
# ÖFB Cup 2012/13



ev = Event.find_by_key!( 'at_cup_2012_13' )

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
ksv                = Team.find_by_key!( 'ksv' )
altach             = Team.find_by_key!( 'altach' )
austrial           = Team.find_by_key!( 'austrial' )
stpoelten          = Team.find_by_key!( 'stpoelten' )
linz               = Team.find_by_key!( 'linz' )
groedig            = Team.find_by_key!( 'groedig' )
lustenau           = Team.find_by_key!( 'lustenau' )
vienna             = Team.find_by_key!( 'vienna' )
hartberg           = Team.find_by_key!( 'hartberg' )
horn               = Team.find_by_key!( 'horn' )
hard               = Team.find_by_key!( 'hard' )
bregenz            = Team.find_by_key!( 'bregenz' )
dornbirn           = Team.find_by_key!( 'dornbirn' )
kufstein           = Team.find_by_key!( 'kufstein' )
wattens            = Team.find_by_key!( 'wattens' )
austrias           = Team.find_by_key!( 'austrias' )
pinzgau            = Team.find_by_key!( 'pinzgau' )
stjohann           = Team.find_by_key!( 'stjohann' )
vsv                = Team.find_by_key!( 'vsv' )
klagenfurt         = Team.find_by_key!( 'klagenfurt' )
austriak           = Team.find_by_key!( 'austriak' )
kalsdorf           = Team.find_by_key!( 'kalsdorf' )
gratkorn           = Team.find_by_key!( 'gratkorn' )
allerheiligen      = Team.find_by_key!( 'allerheiligen' )
leoben             = Team.find_by_key!( 'leoben' )
gak                = Team.find_by_key!( 'gak' )
pasching           = Team.find_by_key!( 'pasching' )
voecklamarkt       = Team.find_by_key!( 'voecklamarkt' )
stflorian          = Team.find_by_key!( 'stflorian' )
wallern            = Team.find_by_key!( 'wallern' )
lask               = Team.find_by_key!( 'lask' )
sollenau           = Team.find_by_key!( 'sollenau' )
amstetten          = Team.find_by_key!( 'amstetten' )
retz               = Team.find_by_key!( 'retz' )
fac                = Team.find_by_key!( 'fac' )
schwechat          = Team.find_by_key!( 'schwechat' )
wienersk           = Team.find_by_key!( 'wienersk' )
ostbahn            = Team.find_by_key!( 'ostbahn' )
oberwart           = Team.find_by_key!( 'oberwart' )
parndorf           = Team.find_by_key!( 'parndorf' )
stegersbach        = Team.find_by_key!( 'stegersbach' )
wolfurt            = Team.find_by_key!( 'wolfurt' )
schwaz             = Team.find_by_key!( 'schwaz' )
reutte             = Team.find_by_key!( 'reutte' )
spittal            = Team.find_by_key!( 'spittal' )
sak                = Team.find_by_key!( 'sak' )
dsc                = Team.find_by_key!( 'dsc' )
micheldorf         = Team.find_by_key!( 'micheldorf' )
badvoeslau         = Team.find_by_key!( 'badvoeslau' )
gaflenz            = Team.find_by_key!( 'gaflenz' )
ardagger           = Team.find_by_key!( 'ardagger' )
rohrendorf         = Team.find_by_key!( 'rohrendorf' )
heiligenkreuz      = Team.find_by_key!( 'heiligenkreuz' )
viktoria           = Team.find_by_key!( 'viktoria' )


r01 = Round.create!( event: ev, pos: 1, title: '1. Runde', start_at: Time.utc('2012-07-12 19:00'))
r02 = Round.create!( event: ev, pos: 2, title: '2. Runde', start_at: Time.utc('2012-09-24 19:00'))
r03 = Round.create!( event: ev, pos: 3, title: '3. Runde', start_at: Time.utc('2012-10-30 15:00'))
r04 = Round.create!( event: ev, pos: 4, title: '4. Runde', start_at: Time.utc('1999-01-01 01:00'))
r05 = Round.create!( event: ev, pos: 5, title: '5. Runde', start_at: Time.utc('1999-01-01 01:00'))
r06 = Round.create!( event: ev, pos: 6, title: '6. Runde', start_at: Time.utc('1999-01-01 01:00'))


games01 = [
 [ fac,               [0,1], altach,            Time.utc('2012-07-12 19:00') ], 
 [ dsc,               [1,2], hartberg,          Time.utc('2012-07-13 19:00') ], 
 [ gratkorn,          [0,0], wacker,            Time.utc('2012-07-13 19:00') ], 
 [ parndorf,          [0,3], admira,            Time.utc('2012-07-13 19:00') ], 
 [ voecklamarkt,      [3,4], lustenau,          Time.utc('2012-07-13 19:00') ], 
 [ wattens,           [0,1], sturm,             Time.utc('2012-07-13 19:00') ], 
 [ pinzgau,           [0,4], groedig,           Time.utc('2012-07-13 19:15') ], 
 [ stflorian,         [2,1], linz,              Time.utc('2012-07-13 19:30') ], 
 [ austriak,          [3,2], horn,              Time.utc('2012-07-13 19:30') ], 
 [ gak,               [2,2], vienna,            Time.utc('2012-07-13 20:00') ], 
 [ wienersk,          [0,2], salzburg,          Time.utc('2012-07-13 20:30') ], 
 [ badvoeslau,        [1,0], stpoelten,         Time.utc('2012-07-14 17:00') ], 
 [ ostbahn,           [1,8], wac,               Time.utc('2012-07-14 18:00') ], 
 [ oberwart,          [1,3], austria,           Time.utc('2012-07-14 18:00') ], 
 [ leoben,            [1,3], mattersburg,       Time.utc('2012-07-14 18:00') ], 
 [ retz,              [1,7], austrial,          Time.utc('2012-07-14 18:00') ], 
 [ bregenz,           [1,2], ksv,               Time.utc('2012-07-14 18:30') ], 
 [ kufstein,          [1,4], ried,              Time.utc('2012-07-14 19:00') ], 
 [ wolfurt,           [2,2], neustadt,          Time.utc('2012-07-15 10:30') ], 
 [ heiligenkreuz,     [0,5], rapid,             Time.utc('2012-07-15 18:00') ], 
]

games02 = [
 [ kalsdorf,          [3,0], hartberg,          Time.utc('2012-09-24 19:00') ], 
 [ viktoria,          [2,2], ksv,               Time.utc('2012-09-25 16:00') ], 
 [ hard,              [0,3], altach,            Time.utc('2012-09-25 16:30') ], 
 [ stegersbach,       [1,3], salzburg,          Time.utc('2012-09-25 18:00') ], 
 [ pasching,          [1,1], austrial,          Time.utc('2012-09-25 19:00') ], 
 [ austriak,          [0,0], admira,            Time.utc('2012-09-25 19:00') ], 
 [ schwechat,         [0,5], sturm,             Time.utc('2012-09-25 19:00') ], 
 [ lask,              [2,0], groedig,           Time.utc('2012-09-25 19:00') ], 
 [ stjohann,          [0,3], lustenau,          Time.utc('2012-09-25 19:00') ], 
 [ sollenau,          [1,1], wacker,            Time.utc('2012-09-25 19:00') ], 
 [ vsv,               [3,1], neustadt,          Time.utc('2012-09-25 19:00') ], 
 [ dornbirn,          [2,3], austria,           Time.utc('2012-09-25 20:30') ], 
 [ badvoeslau,        [2,3], mattersburg,       Time.utc('2012-09-26 16:00') ], 
 [ stflorian,         [1,1], ried,              Time.utc('2012-09-26 19:00') ], 
 [ allerheiligen,     [1,4], rapid,             Time.utc('2012-09-26 19:00') ], 
 [ gak,               [0,6], wac,               Time.utc('2012-09-26 20:20') ], 
]

games03 = [
 [ lask,              [], mattersburg,       Time.utc('2012-10-30 15:00') ], 
 [ rapid,             [], altach,            Time.utc('2012-10-30 15:00') ], 
 [ viktoria,          [], ried,              Time.utc('2012-10-30 15:00') ], 
 [ sturm,             [], wacker,            Time.utc('2012-10-30 15:00') ], 
 [ pasching,          [], austriak,          Time.utc('2012-10-30 15:00') ], 
 [ lustenau,          [], wac,               Time.utc('2012-10-30 15:00') ], 
 [ kalsdorf,          [], salzburg,          Time.utc('2012-10-30 15:00') ], 
 [ vsv,               [], austria,           Time.utc('2012-10-30 15:00') ], 
]

games04 = [
]

games05 = [
]

games06 = [
]



Game.create_from_ary!( games01, r01 )
Game.create_from_ary!( games02, r02 )
Game.create_from_ary!( games03, r03 )
Game.create_from_ary!( games04, r04 )
Game.create_from_ary!( games05, r05 )
Game.create_from_ary!( games06, r06 )

Prop.create!( key: 'db.at_cup_2012_13.fixtures.version', value: '1' )
