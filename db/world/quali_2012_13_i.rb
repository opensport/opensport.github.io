# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

###########################################
##  WM 2014 - Qualification Europe Group I


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
# Gruppe I

# note: for teams see seeds/euro/teams.rb

fra = Team.find_by_key!( 'fra' )
esp = Team.find_by_key!( 'esp' )
blr = Team.find_by_key!( 'blr' )
fin = Team.find_by_key!( 'fin' )
geo = Team.find_by_key!( 'geo' )


worldi = Group.create!( event: world, pos: 9, title: 'Gruppe I' )

worldi.teams << fra
worldi.teams << esp
worldi.teams << blr
worldi.teams << fin
worldi.teams << geo


world.teams << fra
world.teams << esp
world.teams << blr
world.teams << fin
world.teams << geo




games_world1i = [
 [ 1,  geo, [1,0], blr, Time.cet( '2012-09-07 00:00' ) ],
 [ 2,  fin, [0,1], fra, Time.cet( '2012-09-07 00:00' ) ]]

games_world2i = [
 [ 3,  geo, [0,1], esp, Time.cet( '2012-09-11 00:00' ) ],
 [ 4,  fra, [3,1], blr, Time.cet( '2012-09-11 00:00' ) ]]

games_world3i = [
 [ 5, fin, [1,1], geo, Time.cet( '2012-10-12 17:30' ) ],
 [ 6, blr, [0,4], esp, Time.cet( '2012-10-12 20:00' ) ]]

games_world4i = [
 [ 7, esp, [], fra, Time.cet( '2012-10-16 21:00' ) ],
 [ 8, blr, [], geo, Time.cet( '2012-10-16 18:00' ) ]]
 
games_world5i = [
 [  9,  fra, [], geo, Time.cet( '2013-03-22 00:00' ) ],
 [ 10,  esp, [], fin, Time.cet( '2013-03-22 00:00' ) ]]

games_world6i = [
 [ 11,  fra, [], esp, Time.cet( '2013-03-26 00:00' ) ]]

games_world7i = [
 [ 12,  fin, [], blr, Time.cet( '2013-06-07 00:00' ) ]]

games_world8i = [
 [ 13,  blr, [], fin, Time.cet( '2013-06-11 00:00' ) ]]

games_world9i = [
 [ 14,  geo, [], fra, Time.cet( '2013-09-06 00:00' ) ],
 [ 15,  fin, [], esp, Time.cet( '2013-09-06 00:00' ) ]]

games_world10i = [
 [ 16,  blr, [], fra, Time.cet( '2013-09-10 00:00' ) ],
 [ 17,  geo, [], fin, Time.cet( '2013-09-10 00:00' ) ]]

games_world11i = [
 [ 18,  esp, [], blr, Time.cet( '2013-10-11 00:00' ) ]]

games_world12i = [
 [ 19,  fra, [], fin, Time.cet( '2013-10-15 00:00' ) ],
 [ 20,  esp, [], geo, Time.cet( '2013-10-15 00:00' ) ]]


Game.create_from_ary!( games_world1i, world1 )
Game.create_from_ary!( games_world2i, world2 )
Game.create_from_ary!( games_world3i, world3 )
Game.create_from_ary!( games_world4i, world4 )
Game.create_from_ary!( games_world5i, world5 )
Game.create_from_ary!( games_world6i, world6 )
Game.create_from_ary!( games_world7i, world7 )
Game.create_from_ary!( games_world8i, world8 )
Game.create_from_ary!( games_world9i, world9 )
Game.create_from_ary!( games_world10i, world10 )
Game.create_from_ary!( games_world11i, world11 )
Game.create_from_ary!( games_world12i, world12 )


Prop.create!( key: 'db.world.quali.2012/13.i.version', value: '1' )