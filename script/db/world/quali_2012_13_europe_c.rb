# encoding: utf-8

###########################################
##  WM 2014 - Qualification Europe Group C
#
# note: for teams see seeds/euro/teams.rb

world = Event.find_world_quali_euro_2012_13!

team_keys_worldc = [
  'ger',
  'fro',
  'irl',
  'kaz',
  'aut',
  'swe' ]

world.add_teams_from_ary!( team_keys_worldc )


worldc = Group.create!( event: world, pos: 3, title: 'Gruppe C' )

worldc.add_teams_from_ary!( team_keys_worldc )

## The End
#################