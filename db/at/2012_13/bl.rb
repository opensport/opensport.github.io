# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

######################################
## Oesterreichische Bundesliga 2012/13
##
## more info => http://bundesliga.at


bl = Event.create!( :key      => 'at_bl_2012_13',
                    :title    => 'Österr. Bundesliga 2012/13',
                    :start_at => Time.cet('2012-07-21 00:00') )

salzburg    = Team.find_by_key!( 'salzburg' )
rapid       = Team.find_by_key!( 'rapid' )
admira      = Team.find_by_key!( 'admira' )
austria     = Team.find_by_key!( 'austria' )
sturm       = Team.find_by_key!( 'sturm' )
ried        = Team.find_by_key!( 'ried' )
wacker      = Team.find_by_key!( 'wacker' )
mattersburg = Team.find_by_key!( 'mattersburg' )
neustadt    = Team.find_by_key!( 'neustadt' )
wac         = Team.find_by_key!( 'wac' )


bl.teams << salzburg
bl.teams << rapid
bl.teams << admira
bl.teams << austria
bl.teams << sturm
bl.teams << ried
bl.teams << wacker
bl.teams << mattersburg
bl.teams << neustadt
bl.teams << wac


bl01 = Round.create!( :event => bl, :pos =>  1, :title => '1. Runde', :title2 => '21.+22. Jul 2012' )
bl02 = Round.create!( :event => bl, :pos =>  2, :title => '2. Runde', :title2 => '28.+29. Jul 2012' )
bl03 = Round.create!( :event => bl, :pos =>  3, :title => '3. Runde', :title2 => '4.+5. Aug 2012' )
bl04 = Round.create!( :event => bl, :pos =>  4, :title => '4. Runde', :title2 => '11. Aug 2012' )
bl05 = Round.create!( :event => bl, :pos =>  5, :title => '5. Runde', :title2 => '18. Aug 2012' )
bl06 = Round.create!( :event => bl, :pos =>  6, :title => '6. Runde', :title2 => '25. Aug 2012' )
bl07 = Round.create!( :event => bl, :pos =>  7, :title => '7. Runde', :title2 => '1. Sep 2012' )
bl08 = Round.create!( :event => bl, :pos =>  8, :title => '8. Runde', :title2 => '15. Sep 2012' )
bl09 = Round.create!( :event => bl, :pos =>  9, :title => '9. Runde', :title2 => '22. Sep 2012' )
bl10 = Round.create!( :event => bl, :pos => 10, :title => '10. Runde', :title2 => '29. Sep 2012' )
bl11 = Round.create!( :event => bl, :pos => 11, :title => '11. Runde', :title2 => '6. Okt 2012' )
bl12 = Round.create!( :event => bl, :pos => 12, :title => '12. Runde', :title2 => '20. Okt 2012' )
bl13 = Round.create!( :event => bl, :pos => 13, :title => '13. Runde', :title2 => '27. Okt 2012' )
bl14 = Round.create!( :event => bl, :pos => 14, :title => '14. Runde', :title2 => '3. Nov 2012' )
bl15 = Round.create!( :event => bl, :pos => 15, :title => '15. Runde', :title2 => '10. Nov 2012' )
bl16 = Round.create!( :event => bl, :pos => 16, :title => '16. Runde', :title2 => '17. Nov 2012' )
bl17 = Round.create!( :event => bl, :pos => 17, :title => '17. Runde', :title2 => '24. Nov 2012' )
bl18 = Round.create!( :event => bl, :pos => 18, :title => '18. Runde', :title2 => '1. Dez 2012' )
bl19 = Round.create!( :event => bl, :pos => 19, :title => '19. Runde', :title2 => '8. Dez 2012' )
bl20 = Round.create!( :event => bl, :pos => 20, :title => '20. Runde', :title2 => '15. Dez 2012' )


## todo: fix game dates - do not use 00:00

games_bl01 = [
  [ 1, sturm,       [0,2], salzburg,  Time.cet('2012-07-21 16:00') ],
  [ 2, rapid,       [4,0], wacker,    Time.cet('2012-07-21 18:30') ],
  [ 3, mattersburg, [2,0], neustadt,  Time.cet('2012-07-21 18:30') ],
  [ 4, wac,         [0,1], austria,   Time.cet('2012-07-25 18:30') ],  # NB: date changed
  [ 5, admira,      [0,2], ried,      Time.cet('2012-07-22 16:00') ]
]

games_bl02 = [
  [ 1, neustadt,    [0,1], rapid,       Time.cet('2012-07-28 18:30') ],
  [ 2, salzburg,    [3,2], mattersburg, Time.cet('2012-07-28 18:30') ],
  [ 3, austria,     [0,1], sturm,       Time.cet('2012-07-28 18:30') ],
  [ 4, wacker,      [1,2], admira,      Time.cet('2012-07-29 16:00') ],
  [ 5, ried,        [0,2], wac,         Time.cet('2012-07-29 18:30') ]
]

games_bl03 = [
  [ 1, ried,        [2,0], wacker,       Time.cet('2012-08-04 18:30') ],
  [ 2, mattersburg, [3,1], sturm,        Time.cet('2012-08-04 18:30') ],
  [ 3, wac,         [0,2], salzburg,     Time.cet('2012-08-04 18:30') ],
  [ 4, admira,      [4,0], neustadt,     Time.cet('2012-08-04 18:30') ],
  [ 5, rapid,       [0,3], austria,      Time.cet('2012-08-05 16:00') ]
]

games_bl04 = [
  [ 1, neustadt,    [2,3], ried,        Time.cet('2012-08-11 00:00') ],
  [ 2, sturm,       [4,1], wac,         Time.cet('2012-08-11 00:00') ],
  [ 3, salzburg,    [0,2], rapid,       Time.cet('2012-08-11 00:00') ],
  [ 4, austria,     [1,0], admira,      Time.cet('2012-08-11 00:00') ],
  [ 5, wacker,      [2,1], mattersburg, Time.cet('2012-08-11 00:00') ]
]

games_bl05 = [
  [ 1, ried,     [0,1], austria,       Time.cet('2012-08-18 00:00') ],
  [ 2, rapid,    [3,0], sturm,         Time.cet('2012-08-18 00:00') ],
  [ 3, wacker,   [2,3], neustadt,      Time.cet('2012-08-18 00:00') ],
  [ 4, wac,      [0,1], mattersburg,   Time.cet('2012-08-18 00:00') ],
  [ 5, admira,   [4,4], salzburg,      Time.cet('2012-08-18 00:00') ]
]

games_bl06 = [
  [ 1, sturm,       [3,2], admira,       Time.cet('2012-08-25 00:00') ],
  [ 2, salzburg,    [1,1], neustadt,     Time.cet('2012-08-25 00:00') ],
  [ 3, austria,     [2,0], wacker,       Time.cet('2012-08-25 00:00') ],
  [ 4, mattersburg, [2,1], ried,         Time.cet('2012-08-25 00:00') ],
  [ 5, wac,         [1,0], rapid,        Time.cet('2012-08-25 00:00') ]
]

games_bl07 = [
  [ 1, ried,    [0,1], sturm,       Time.cet('2012-09-01 00:00') ],
  [ 2, neustadt,[0,2], austria,     Time.cet('2012-09-01 00:00') ],
  [ 3, rapid,   [3,0], mattersburg, Time.cet('2012-09-01 00:00') ],
  [ 4, wacker,  [0,4], salzburg,    Time.cet('2012-09-01 00:00') ],
  [ 5, admira,  [1,1], wac,         Time.cet('2012-09-01 00:00') ]
]

games_bl08 = [
  [ 1, sturm,       [3,0], wacker,       Time.cet('2012-09-15 00:00') ],
  [ 2, salzburg,    [1,1], ried,         Time.cet('2012-09-15 00:00') ],
  [ 3, rapid,       [0,0], admira,       Time.cet('2012-09-15 00:00') ],
  [ 4, mattersburg, [2,4], austria,      Time.cet('2012-09-15 00:00') ],
  [ 5, wac,         [6,0], neustadt,     Time.cet('2012-09-15 00:00') ]
]

games_bl09 = [
  [ 1, ried,    [0,2], rapid,       Time.cet('2012-09-22 00:00') ],
  [ 2, neustadt,[1,1], sturm,       Time.cet('2012-09-22 00:00') ],
  [ 3, austria, [0,1], salzburg,    Time.cet('2012-09-22 00:00') ],
  [ 4, wacker,  [0,1], wac,         Time.cet('2012-09-22 00:00') ],
  [ 5, admira,  [5,1], mattersburg, Time.cet('2012-09-22 00:00') ]
]

games_bl10 = [
  [ 1, salzburg,  [3,2], sturm,       Time.cet('2012-09-29 00:00') ],
  [ 2, wacker,    [0,2], rapid,       Time.cet('2012-09-29 00:00') ],
  [ 3, neustadt,  [0,0], mattersburg, Time.cet('2012-09-29 00:00') ],
  [ 4, austria,   [1,1], wac,         Time.cet('2012-09-29 00:00') ],
  [ 5, ried,      [1,1], admira,      Time.cet('2012-09-29 00:00') ]
]

games_bl11 = [
  [ 1, wac,         [2,5], ried,       Time.cet('2012-10-06 00:00') ],
  [ 2, rapid,       [1,1], neustadt,   Time.cet('2012-10-06 00:00') ],
  [ 3, mattersburg, [1,3], salzburg,   Time.cet('2012-10-06 00:00') ],
  [ 4, sturm,       [1,1], austria,    Time.cet('2012-10-06 00:00') ],
  [ 5, admira,      [4,1], wacker,     Time.cet('2012-10-06 00:00') ]
]

games_bl12 = [
  [ 1, wacker,    [], ried,        Time.cet('2012-10-20 00:00') ],
  [ 2, austria,   [], rapid,       Time.cet('2012-10-20 00:00') ],
  [ 3, sturm,     [], mattersburg, Time.cet('2012-10-20 00:00') ],
  [ 4, salzburg,  [], wac,         Time.cet('2012-10-20 00:00') ],
  [ 5, neustadt,  [], admira,      Time.cet('2012-10-20 00:00') ]
]

games_bl13 = [
  [ 1, ried,        [], neustadt,     Time.cet('2012-10-27 00:00') ],
  [ 2, wac,         [], sturm,        Time.cet('2012-10-27 00:00') ],
  [ 3, rapid,       [], salzburg,     Time.cet('2012-10-27 00:00') ],
  [ 4, admira,      [], austria,      Time.cet('2012-10-27 00:00') ],
  [ 5, mattersburg, [], wacker,       Time.cet('2012-10-27 00:00') ]
]

games_bl14 = [
  [ 1, austria,      [], ried,     Time.cet('2012-11-03 00:00') ],
  [ 2, sturm,        [], rapid,    Time.cet('2012-11-03 00:00') ],
  [ 3, neustadt,     [], wacker,   Time.cet('2012-11-03 00:00') ],
  [ 4, mattersburg,  [], wac,      Time.cet('2012-11-03 00:00') ],
  [ 5, salzburg,     [], admira,   Time.cet('2012-11-03 00:00') ]
]

games_bl15 = [
  [ 1, admira,      [], sturm,       Time.cet('2012-11-10 00:00') ],
  [ 2, neustadt,    [], salzburg,    Time.cet('2012-11-10 00:00') ],
  [ 3, wacker,      [], austria,     Time.cet('2012-11-10 00:00') ],
  [ 4, ried,        [], mattersburg, Time.cet('2012-11-10 00:00') ],
  [ 5, rapid,       [], wac,         Time.cet('2012-11-10 00:00') ]
]

games_bl16 = [
  [ 1, sturm,      [], ried,        Time.cet('2012-11-17 00:00') ],
  [ 2, austria,    [], neustadt,    Time.cet('2012-11-17 00:00') ],
  [ 3, mattersburg,[], rapid,       Time.cet('2012-11-17 00:00') ],
  [ 4, salzburg,   [], wacker,      Time.cet('2012-11-17 00:00') ],
  [ 5, wac,        [], admira,      Time.cet('2012-11-17 00:00') ]
]

games_bl17 = [
  [ 1, wacker,    [], sturm,       Time.cet('2012-11-24 00:00') ],
  [ 2, ried,      [], salzburg,    Time.cet('2012-11-24 00:00') ],
  [ 3, admira,    [], rapid,       Time.cet('2012-11-24 00:00') ],
  [ 4, austria,   [], mattersburg, Time.cet('2012-11-24 00:00') ],
  [ 5, neustadt,  [], wac,         Time.cet('2012-11-24 00:00') ]
]

games_bl18 = [
  [ 1, rapid,       [], ried,     Time.cet('2012-12-01 00:00') ],
  [ 2, sturm,       [], neustadt, Time.cet('2012-12-01 00:00') ],
  [ 3, salzburg,    [], austria,  Time.cet('2012-12-01 00:00') ],
  [ 4, wac,         [], wacker,   Time.cet('2012-12-01 00:00') ],
  [ 5, mattersburg, [], admira,   Time.cet('2012-12-01 00:00') ]
]

games_bl19 = [
  [ 1, sturm,       [], salzburg,    Time.cet('2012-12-08 00:00') ],
  [ 2, rapid,       [], wacker,      Time.cet('2012-12-08 00:00') ],
  [ 3, mattersburg, [], neustadt,    Time.cet('2012-12-08 00:00') ],
  [ 4, wac,         [], austria,     Time.cet('2012-12-08 00:00') ],
  [ 5, admira,      [], ried,        Time.cet('2012-12-08 00:00') ]
]

games_bl20 = [
  [ 1, ried,      [], wac,         Time.cet('2012-12-15 00:00') ],
  [ 2, neustadt,  [], rapid,       Time.cet('2012-12-15 00:00') ],
  [ 3, salzburg,  [], mattersburg, Time.cet('2012-12-15 00:00') ],
  [ 4, austria,   [], sturm,       Time.cet('2012-12-15 00:00') ],
  [ 5, wacker,    [], admira,      Time.cet('2012-12-15 00:00') ]
]



Game.create_from_ary!( games_bl01, bl01 )
Game.create_from_ary!( games_bl02, bl02 )
Game.create_from_ary!( games_bl03, bl03 )
Game.create_from_ary!( games_bl04, bl04 )
Game.create_from_ary!( games_bl05, bl05 )
Game.create_from_ary!( games_bl06, bl06 )
Game.create_from_ary!( games_bl07, bl07 )
Game.create_from_ary!( games_bl08, bl08 )
Game.create_from_ary!( games_bl09, bl09 )
Game.create_from_ary!( games_bl10, bl10 )
Game.create_from_ary!( games_bl11, bl11 )
Game.create_from_ary!( games_bl12, bl12 )
Game.create_from_ary!( games_bl13, bl13 )
Game.create_from_ary!( games_bl14, bl14 )
Game.create_from_ary!( games_bl15, bl15 )
Game.create_from_ary!( games_bl16, bl16 )
Game.create_from_ary!( games_bl17, bl17 )
Game.create_from_ary!( games_bl18, bl18 )
Game.create_from_ary!( games_bl19, bl19 )
Game.create_from_ary!( games_bl20, bl20 )


Prop.create!( :key => 'db.at.bl.2012/13.version', :value => '1' )
