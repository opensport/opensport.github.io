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


bl29 = Round.create!( event: bl, pos: 29, title: '29. Runde', start_at: Time.cet('2012-04-07'), title2: 'Sa+So 7.+8. April 2012' )
bl30 = Round.create!( event: bl, pos: 30, title: '30. Runde', start_at: Time.cet('2012-04-14'), title2: 'Sa+So 14.+15. April 2012' )
bl31 = Round.create!( event: bl, pos: 31, title: '31. Runde', start_at: Time.cet('2012-04-21'), title2: 'Sa+So 21.+22. April 2012' )
bl32 = Round.create!( event: bl, pos: 32, title: '32. Runde', start_at: Time.cet('2012-04-28'), title2: 'Sa+So 28.+29. April 2012' )
bl33 = Round.create!( event: bl, pos: 33, title: '33. Runde', start_at: Time.cet('2012-05-05'), title2: 'Sa 5. Mai 2012' )
bl34 = Round.create!( event: bl, pos: 34, title: '34. Runde', start_at: Time.cet('2012-05-10'), title2: 'Do 10. Mai 2012' )
bl35 = Round.create!( event: bl, pos: 35, title: '35. Runde', start_at: Time.cet('2012-05-13'), title2: 'So 13. Mai 2012' )
bl36 = Round.create!( event: bl, pos: 36, title: '36. Runde', start_at: Time.cet('2012-05-17'), title2: 'Do 17. Mai 2012' )


games_bl29 = [
  [ salzburg,    [2, 0], wacker,   Time.cet('2012-04-07 16:00') ],
  [ ried,        [0, 1], austria,  Time.cet('2012-04-07 18:30') ],
  [ ksv,         [2, 3], admira,   Time.cet('2012-04-07 18:30') ],
  [ rapid,       [2, 1], neustadt, Time.cet('2012-04-07 18:30') ],
  [ mattersburg, [0, 2], sturm,    Time.cet('2012-04-08 16:00') ]
]

games_bl30 = [
  [ neustadt,    [0, 0], ksv,         Time.cet('2012-04-14 16:00') ],
  [ admira,      [1, 1], wacker,      Time.cet('2012-04-14 18:30') ],
  [ sturm,       [2, 2], salzburg,    Time.cet('2012-04-14 18:30') ],
  [ ried,        [2, 0], mattersburg, Time.cet('2012-04-14 18:30') ],
  [ austria,     [0, 0], rapid,       Time.cet('2012-04-15 16:00') ]
]

games_bl31 = [
  [ wacker,      [2, 0], neustadt, Time.cet('2012-04-21 16:00') ],
  [ ksv,         [1, 0], austria,  Time.cet('2012-04-21 18:30') ],
  [ mattersburg, [1, 2], admira,   Time.cet('2012-04-21 18:30') ],
  [ salzburg,    [2, 0], ried,     Time.cet('2012-04-21 18:30') ],
  [ rapid,       [1, 1], sturm,    Time.cet('2012-04-22 16:00') ]
]

games_bl32 = [
  [ austria,     [3, 0], wacker,   Time.cet('2012-04-28 16:00') ],
  [ neustadt,    [1, 4], admira,   Time.cet('2012-04-28 18:30') ],
  [ mattersburg, [0, 1], salzburg, Time.cet('2012-04-28 18:30') ],
  [ sturm,       [2, 1], ksv,      Time.cet('2012-04-28 18:30') ],
  [ ried,        [2, 3], rapid,    Time.cet('2012-04-29 16:00') ]
]

games_bl33 = [
  [ neustadt,    [0, 0], sturm,       Time.cet('2012-05-05 16:00') ],
  [ admira,      [3, 2], austria,     Time.cet('2012-05-05 18:30') ],
  [ ksv,         [0, 0], ried,        Time.cet('2012-05-05 18:30') ],
  [ wacker,      [3, 6], mattersburg, Time.cet('2012-05-05 18:30') ],
  [ rapid,       [0, 1], salzburg,    Time.cet('2012-05-06 16:00') ]
]

games_bl34 = [
  [ salzburg,    [2, 0], ksv,          Time.cet('2012-05-10 18:30') ],
  [ austria,     [3, 1], neustadt,     Time.cet('2012-05-10 20:30') ],
  [ ried,        [1, 1], wacker,       Time.cet('2012-05-10 20:30') ],
  [ mattersburg, [0, 1], rapid,        Time.cet('2012-05-10 20:30') ],
  [ sturm,       [0, 3], admira,       Time.cet('2012-05-10 20:30') ]
]

games_bl35 = [
  [ ksv,       [0,2], rapid,       Time.cet('2012-05-13 16:00') ],
  [ wacker,    [1,1], sturm,       Time.cet('2012-05-13 16:00') ],
  [ neustadt,  [1,5], salzburg,    Time.cet('2012-05-13 16:00') ],
  [ admira,    [1,1], ried,        Time.cet('2012-05-13 16:00') ],
  [ austria,   [1,0], mattersburg, Time.cet('2012-05-13 16:00') ]
]

games_bl36 = [
  [ rapid,       [2,0], wacker,      Time.cet('2012-05-17 16:00') ],
  [ ried,        [2,2], neustadt,    Time.cet('2012-05-17 16:00') ],
  [ mattersburg, [2,0], ksv,         Time.cet('2012-05-17 16:00') ],
  [ sturm,       [3,1], austria,     Time.cet('2012-05-17 16:00') ],
  [ salzburg,    [2,0], admira,      Time.cet('2012-05-17 16:00') ]
]

Game.create_from_ary!( games_bl29, bl29 )
Game.create_from_ary!( games_bl30, bl30 )
Game.create_from_ary!( games_bl31, bl31 )
Game.create_from_ary!( games_bl32, bl32 )
Game.create_from_ary!( games_bl33, bl33 )
Game.create_from_ary!( games_bl34, bl34 )
Game.create_from_ary!( games_bl35, bl35 )
Game.create_from_ary!( games_bl36, bl36 )


Prop.create!( key: 'db.at.bl.2011/12.version', value: '1' )
