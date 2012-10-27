# encoding: utf-8

##################################
### ÖFB Cup 2012/13

cup = Event.create!( key:      'at_cup_2012_13',
                     title:    'ÖFB Cup 2012/13',
                     start_at: Time.cet( '2012-07-13 00:00' ) )


## 10 Bundeliga Teams

cup_bl_team_keys = [
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

## 10 Erste Liga Teams

cup_erste_team_keys = [
   'ksv',
   'altach',
   'austrial',
   'stpoelten',
   'linz',
   'groedig',
   'lustenau',
   'vienna',
   'hartberg',
   'horn']


cup.add_teams_from_ary!( cup_bl_team_keys + cup_erste_team_keys )


## regionalliga west teams

hard          = Team.find_by_key!( 'hard' )
bregenz       = Team.find_by_key!( 'bregenz' )
dornbirn      = Team.find_by_key!( 'dornbirn' )
kufstein      = Team.find_by_key!( 'kufstein' )
wattens       = Team.find_by_key!( 'wattens' )
austrias      = Team.find_by_key!( 'austrias')
pinzgau       = Team.find_by_key!( 'pinzgau' )
stjohann      = Team.find_by_key!( 'stjohann' )

## regionalliga mitte teams

vsv           = Team.find_by_key!( 'vsv' )
klagenfurt    = Team.find_by_key!( 'klagenfurt' )
austriak      = Team.find_by_key!( 'austriak' )
kalsdorf      = Team.find_by_key!( 'kalsdorf' )
gratkorn      = Team.find_by_key!( 'gratkorn' )
allerheiligen = Team.find_by_key!( 'allerheiligen' )
leoben        = Team.find_by_key!( 'leoben' )
gak           = Team.find_by_key!( 'gak' )
pasching      = Team.find_by_key!( 'pasching' )
voecklamarkt  = Team.find_by_key!( 'voecklamarkt' )
stflorian     = Team.find_by_key!( 'stflorian' )
wallern       = Team.find_by_key!( 'wallern' )
lask          = Team.find_by_key!( 'lask' )

## regionalliga ost teams

sollenau      = Team.find_by_key!( 'sollenau' )
amstetten     = Team.find_by_key!( 'amstetten' )
retz          = Team.find_by_key!( 'retz' )
fac           = Team.find_by_key!( 'fac' )
schwechat     = Team.find_by_key!( 'schwechat' )
wienersk      = Team.find_by_key!( 'wienersk' )
ostbahn       = Team.find_by_key!( 'ostbahn' )
oberwart      = Team.find_by_key!( 'oberwart' )
parndorf      = Team.find_by_key!( 'parndorf' )
stegersbach   = Team.find_by_key!( 'stegersbach' )

## noch einige teams

wolfurt       = Team.find_by_key!( 'wolfurt' )
schwaz        = Team.find_by_key!( 'schwaz' )
reutte        = Team.find_by_key!( 'reutte' )
spittal       = Team.find_by_key!( 'spittal' )
sak           = Team.find_by_key!( 'sak' )
dsc           = Team.find_by_key!( 'dsc' )
micheldorf    = Team.find_by_key!( 'micheldorf' )
badvoeslau    = Team.find_by_key!( 'badvoeslau' )
gaflenz       = Team.find_by_key!( 'gaflenz' )
ardagger      = Team.find_by_key!( 'ardagger' )
rohrendorf    = Team.find_by_key!( 'rohrendorf' )
heiligenkreuz = Team.find_by_key!( 'heiligenkreuz' )
viktoria      = Team.find_by_key!( 'viktoria' )



Prop.create!( key: 'db.at.cup.2012/13.version', value: '1' )
