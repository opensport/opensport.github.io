# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

###########################################
##  WM 2014 - Qualification Europe Group C

world = Event.find_by_key!( 'wmq' )

world1  = Round.find_by_event_id_and_pos!( world.id, 1 ) # 7. Sep 2012
world2  = Round.find_by_event_id_and_pos!( world.id, 2 ) # 11. """"""
world3  = Round.find_by_event_id_and_pos!( world.id, 3 ) # 12. Okt 2012
world4  = Round.find_by_event_id_and_pos!( world.id, 4 ) # 16. """""""
world5  = Round.find_by_event_id_and_pos!( world.id, 5 ) # 22. Mär 2013
world6  = Round.find_by_event_id_and_pos!( world.id, 6 ) # 26. """"""
world7  = Round.find_by_event_id_and_pos!( world.id, 7 ) #  7. Jun 2013
world8  = Round.find_by_event_id_and_pos!( world.id, 8 ) # 11. """""""
world9  = Round.find_by_event_id_and_pos!( world.id, 9 ) #  6. Sep 2013
world10 = Round.find_by_event_id_and_pos!( world.id, 10 ) # 10. """""""
world11 = Round.find_by_event_id_and_pos!( world.id, 11 ) # 11. Okt 2013
world12 = Round.find_by_event_id_and_pos!( world.id, 12 ) # 15. """"""""




#################################3
# Gruppe C

# note: for teams see seeds/euro/teams.rb

ger = Team.find_by_key!( 'ger' )
fro = Team.find_by_key!( 'fro' )
irl = Team.find_by_key!( 'irl' )
kaz = Team.find_by_key!( 'kaz' )
aut = Team.find_by_key!( 'aut' )
swe = Team.find_by_key!( 'swe' )


worldc = Group.create!( event: world, pos: 3, title: 'Gruppe C' )

worldc.teams << ger
worldc.teams << fro
worldc.teams << irl
worldc.teams << kaz
worldc.teams << aut
worldc.teams << swe



world.teams << ger
world.teams << fro
world.teams << irl
world.teams << kaz
world.teams << aut
world.teams << swe


games_world1c = [
 [ 1,  ger, [3,0], fro, Time.cet( '2012-09-07 00:00' ) ],
 [ 2,  kaz, [1,2], irl, Time.cet( '2012-09-07 00:00' ) ]]

games_world2c = [
 [ 3,  aut, [1,2], ger, Time.cet( '2012-09-11 00:00' ) ],
 [ 4,  swe, [2,0], kaz, Time.cet( '2012-09-11 00:00' ) ]]

games_world3c = [
 [ 5,  irl, [1,6], ger, Time.cet( '2012-10-12 20:45' ) ],
 [ 6,  fro, [1,2], swe, Time.cet( '2012-10-12 18:00' ) ],
 [ 7,  kaz, [0,0], aut, Time.cet( '2012-10-12 18:00' ) ]]

games_world4c = [
 [  8,  ger, [], swe, Time.cet( '2012-10-16 20:45' ) ],
 [  9,  fro, [], irl, Time.cet( '2012-10-16 20:00' ) ],
 [ 10,  aut, [], kaz, Time.cet( '2012-10-16 20:30' ) ]]

games_world5c = [
 [ 11,  kaz, [], ger, Time.cet( '2013-03-22 00:00' ) ],
 [ 12,  aut, [], fro, Time.cet( '2013-03-22 00:00' ) ],
 [ 13,  swe, [], irl, Time.cet( '2013-03-22 00:00' ) ]]

games_world6c = [
 [ 14,  ger, [], kaz, Time.cet( '2013-03-26 00:00' ) ],
 [ 15,  irl, [], aut, Time.cet( '2013-03-26 00:00' ) ]]

games_world7c = [
 [ 16,  irl, [], fro, Time.cet( '2013-06-07 00:00' ) ],
 [ 17,  aut, [], swe, Time.cet( '2013-06-07 00:00' ) ]]

games_world8c = [
 [ 18,  swe, [], fro, Time.cet( '2013-06-11 00:00' ) ]]

games_world9c = [
 [ 19,  ger, [], aut, Time.cet( '2013-09-06 00:00' ) ],
 [ 20,  kaz, [], fro, Time.cet( '2013-09-06 00:00' ) ],
 [ 21,  irl, [], swe, Time.cet( '2013-09-06 00:00' ) ]]

games_world10c = [
 [ 22,  fro, [], ger, Time.cet( '2013-09-10 00:00' ) ],
 [ 23,  aut, [], irl, Time.cet( '2013-09-10 00:00' ) ],
 [ 24,  kaz, [], swe, Time.cet( '2013-09-10 00:00' ) ]]

games_world11c = [
 [ 25,  ger, [], irl, Time.cet( '2013-10-11 00:00' ) ],
 [ 26,  fro, [], kaz, Time.cet( '2013-10-11 00:00' ) ],
 [ 27,  swe, [], aut, Time.cet( '2013-10-11 00:00' ) ]]

games_world12c = [
 [ 28,  swe, [], ger, Time.cet( '2013-10-15 00:00' ) ],
 [ 29,  fro, [], aut, Time.cet( '2013-10-15 00:00' ) ],
 [ 30,  irl, [], kaz, Time.cet( '2013-10-15 00:00' ) ]]


Game.create_from_ary!( games_world1c, world1 )
Game.create_from_ary!( games_world2c, world2 )
Game.create_from_ary!( games_world3c, world3 )
Game.create_from_ary!( games_world4c, world4 )
Game.create_from_ary!( games_world5c, world5 )
Game.create_from_ary!( games_world6c, world6 )
Game.create_from_ary!( games_world7c, world7 )
Game.create_from_ary!( games_world8c, world8 )
Game.create_from_ary!( games_world9c, world9 )
Game.create_from_ary!( games_world10c, world10 )
Game.create_from_ary!( games_world11c, world11 )
Game.create_from_ary!( games_world12c, world12 )


Prop.create!( key: 'db.world.quali.2012/13.c.version', value: '1' )
