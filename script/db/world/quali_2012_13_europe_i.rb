# encoding: utf-8

###########################################
##  WM 2014 - Qualification Europe Group I

# note: for teams see seeds/euro/teams.rb

world = Event.find_world_quali_euro_2012_13!

team_keys_worldi = [
  'fra',
  'esp',
  'blr',
  'fin',
  'geo' ]

world.add_teams_from_ary!( team_keys_worldi )


worldi = Group.create!( event: world, pos: 9, title: 'Gruppe I' )

worldi.add_teams_from_ary!( team_keys_worldi )


## The End
#################