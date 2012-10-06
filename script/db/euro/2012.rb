# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

#################################
##  Euro 2012

# see http://en.wikipedia.org/wiki/UEFA_Euro_2012
# or  http://de.wikipedia.org/wiki/Fu%C3%9Fball-Europameisterschaft_2012


euro = Event.create!( :key => 'euro',
                      :title => 'Euro 2012',
                      :start_at => Time.cet( '2012-06-07 17:00' ))

pol = Team.find_by_key!( 'pol' )
gre = Team.find_by_key!( 'gre' )
rus = Team.find_by_key!( 'rus' )
cze = Team.find_by_key!( 'cze' )

ned = Team.find_by_key!( 'ned' )
den = Team.find_by_key!( 'den' )
ger = Team.find_by_key!( 'ger' )
por = Team.find_by_key!( 'por' )

esp = Team.find_by_key!( 'esp' )
ita = Team.find_by_key!( 'ita' )
irl = Team.find_by_key!( 'irl' )
cro = Team.find_by_key!( 'cro' )

ukr = Team.find_by_key!( 'ukr' )
swe = Team.find_by_key!( 'swe' )
fra = Team.find_by_key!( 'fra' )
eng = Team.find_by_key!( 'eng' )


euro.teams << pol
euro.teams << gre
euro.teams << rus
euro.teams << cze
euro.teams << ned
euro.teams << den
euro.teams << ger
euro.teams << por
euro.teams << esp
euro.teams << ita
euro.teams << irl
euro.teams << cro
euro.teams << ukr
euro.teams << swe
euro.teams << fra
euro.teams << eng



euroa = Group.create!( :event => euro, :pos => 1, :title => 'Gruppe A' )
eurob = Group.create!( :event => euro, :pos => 2, :title => 'Gruppe B' )
euroc = Group.create!( :event => euro, :pos => 3, :title => 'Gruppe C' )
eurod = Group.create!( :event => euro, :pos => 4, :title => 'Gruppe D' )

#################################
# Gruppe A

euroa.teams << pol
euroa.teams << gre
euroa.teams << rus
euroa.teams << cze


#################################
# Gruppe B

eurob.teams << ned
eurob.teams << den
eurob.teams << ger
eurob.teams << por


#################################3
# Gruppe C

euroc.teams << esp
euroc.teams << ita
euroc.teams << irl
euroc.teams << cro

#################################3
# Gruppe D

eurod.teams << ukr
eurod.teams << swe
eurod.teams << fra
eurod.teams << eng


euro_round1 = Round.create!( :event => euro, :pos => 1, :title => 'Vorrunde 1. Spieltag', :title2 => '8.-11. Juni' )
euro_round2 = Round.create!( :event => euro, :pos => 2, :title => 'Vorrunde 2. Spieltag', :title2 => '12.-15. Juni' )
euro_round3 = Round.create!( :event => euro, :pos => 3, :title => 'Vorrunde 3. Spieltag', :title2 => '16.-19. Juni' )



games_euro_round1 = [
  [  1, pol, [1,1], gre, Time.cet('2012-06-08 18:00'), euroa ],
  [  2, rus, [4,1], cze, Time.cet('2012-06-08 20:45'), euroa ],
  [  3, ned, [0,1], den, Time.cet('2012-06-09 18:00'), eurob ],
  [  4, ger, [1,0], por, Time.cet('2012-06-09 20:45'), eurob ],
  [  5, esp, [1,1], ita, Time.cet('2012-06-10 18:00'), euroc ],
  [  6, irl, [1,3], cro, Time.cet('2012-06-10 20:45'), euroc ],
  [  7, fra, [1,1], eng, Time.cet('2012-06-11 18:00'), eurod ],
  [  8, ukr, [2,1], swe, Time.cet('2012-06-11 20:45'), eurod ]
]

games_euro_round2 = [
  [  9, gre, [1,2], cze, Time.cet('2012-06-12 18:00'), euroa ],
  [ 10, pol, [1,1], rus, Time.cet('2012-06-12 20:45'), euroa ],
  [ 11, den, [2,3], por, Time.cet('2012-06-13 18:00'), eurob ],
  [ 12, ned, [1,2], ger, Time.cet('2012-06-13 20:45'), eurob ],
  [ 13, ita, [1,1], cro, Time.cet('2012-06-14 18:00'), euroc ],
  [ 14, esp, [4,0], irl, Time.cet('2012-06-14 20:45'), euroc ],
  [ 15, swe, [2,3], eng, Time.cet('2012-06-15 20:45'), eurod ],
  [ 16, ukr, [0,2], fra, Time.cet('2012-06-15 18:00'), eurod ]
]

games_euro_round3 = [
  [ 17, cze, [1,0], pol, Time.cet('2012-06-16 20:45'), euroa ],
  [ 18, gre, [1,0], rus, Time.cet('2012-06-16 20:45'), euroa ],
  [ 19, por, [2,1], ned, Time.cet('2012-06-17 20:45'), eurob ],
  [ 20, den, [1,2], ger, Time.cet('2012-06-17 20:45'), eurob ],
  [ 21, cro, [0,1], esp, Time.cet('2012-06-18 20:45'), euroc ],
  [ 22, ita, [2,0], irl, Time.cet('2012-06-18 20:45'), euroc ],
  [ 23, eng, [1,0], ukr, Time.cet('2012-06-19 20:45'), eurod ],
  [ 24, swe, [2,0], fra, Time.cet('2012-06-19 20:45'), eurod ]
]

Game.create_from_ary!( games_euro_round1, euro_round1 )
Game.create_from_ary!( games_euro_round2, euro_round2 )
Game.create_from_ary!( games_euro_round3, euro_round3 )



euro8 = Round.create!( :event => euro, :pos => 4, :title => 'Viertelfinale' )
euro4 = Round.create!( :event => euro, :pos => 5, :title => 'Halbfinale' )
euro1 = Round.create!( :event => euro, :pos => 6, :title => 'Finale' )


games_euro8 = [
  [ 25, cze, [0,1], por, Time.cet('2012-06-21 20:45') ],
  [ 26, ger, [4,2], gre, Time.cet('2012-06-22 20:45') ],
  [ 27, esp, [2,0], fra, Time.cet('2012-06-23 20:45') ],
  [ 28, eng, [0,0,0,0,2,4], ita, Time.cet('2012-06-24 20:45') ]]

games_euro4 = [
  [ 29, por, [0,0,0,0,2,4], esp, Time.cet('2012-06-27 20:45') ],
  [ 30, ger, [1,2], ita, Time.cet('2012-06-28 20:45') ]]

games_euro1 = [
  [ 31, esp, [4,0], ita, Time.cet('2012-07-01 20:45') ]]


Game.create_knockouts_from_ary!( games_euro8, euro8 )
Game.create_knockouts_from_ary!( games_euro4, euro4 )
Game.create_knockouts_from_ary!( games_euro1, euro1 )


Prop.create!( :key => 'db.euro.2012.version', :value => '1' )