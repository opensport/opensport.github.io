# encoding: utf-8

###########################################
##  WM 2014 - Qualification Europe Group C
#
# note: for teams see seeds/euro/teams.rb

world = Event.find_by_key!( 'wmq.euro' )

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


Prop.create!( key: 'db.world.quali.euro.2012/13.c.version', value: '1' )
