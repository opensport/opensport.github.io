# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

###########################################
##  WM 2014 - Qualification Europe Group I


world = Event.find_by_key!( 'wmql' )

world1 = Round.find_by_event_id_and_pos!( world.id, 1 ) # 7.+11. Sep 2012
world2 = Round.find_by_event_id_and_pos!( world.id, 2 ) # 12.+16. Okt 2012
world3 = Round.find_by_event_id_and_pos!( world.id, 3 ) # 22.+26. Mär 2013
world4 = Round.find_by_event_id_and_pos!( world.id, 4 ) #  7.+11. Jun 2013
world5 = Round.find_by_event_id_and_pos!( world.id, 5 ) #  6.+10. Sep 2013
world6 = Round.find_by_event_id_and_pos!( world.id, 6 ) # 11.+15. Okt 2013


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
 [ 2,  fin, [0,1], fra, Time.cet( '2012-09-07 00:00' ) ],
 [ 3,  geo, [0,1], esp, Time.cet( '2012-09-11 00:00' ) ],
 [ 4,  fra, [3,1], blr, Time.cet( '2012-09-11 00:00' ) ]]

games_world2i = [
 [  5,  fin, [], geo, Time.cet( '2012-10-12 00:00' ) ],
 [  6,  blr, [], esp, Time.cet( '2012-10-12 00:00' ) ],
 [  7,  esp, [], fra, Time.cet( '2012-10-16 00:00' ) ],
 [  8,  blr, [], geo, Time.cet( '2012-10-16 00:00' ) ]],

games_world3i = [
 [  9,  fra, [], geo, Time.cet( '2013-03-22 00:00' ) ],
 [ 10,  esp, [], fin, Time.cet( '2013-03-22 00:00' ) ],
 [ 11,  fra, [], esp, Time.cet( '2013-03-26 00:00' ) ]]

games_world4i = [
 [ 12,  fin, [], blr, Time.cet( '2013-06-07 00:00' ) ],
 [ 13,  blr, [], fin, Time.cet( '2013-06-11 00:00' ) ]]

games_world5i = [
 [ 14,  geo, [], fra, Time.cet( '2013-09-06 00:00' ) ],
 [ 15,  fin, [], esp, Time.cet( '2013-09-06 00:00' ) ],
 [ 16,  blr, [], fra, Time.cet( '2013-09-10 00:00' ) ],
 [ 17,  geo, [], fin, Time.cet( '2013-09-10 00:00' ) ]]

games_world6i = [
 [ 18,  esp, [], blr, Time.cet( '2013-10-11 00:00' ) ],
 [ 19,  fra, [], fin, Time.cet( '2013-10-15 00:00' ) ],
 [ 20,  esp, [], geo, Time.cet( '2013-10-15 00:00' ) ]]

=begin
Game.create_from_ary!( games_world1i, world1 )
Game.create_from_ary!( games_world2i, world2 )
Game.create_from_ary!( games_world3i, world3 )
Game.create_from_ary!( games_world4i, world4 )
Game.create_from_ary!( games_world5i, world5 )
Game.create_from_ary!( games_world6i, world6 )
=end

Prop.create!( key: 'db.world.quali.2012/13.i.version', value: '1' )