# encoding: utf-8

###########################################
##  WM 2014 - Qualification Europe Group I

# note: for teams see seeds/euro/teams.rb

world = Event.find_by_key!( 'wmq.euro' )

team_keys_worldi = [
  'fra',
  'esp',
  'blr',
  'fin',
  'geo' ]

world.add_teams_from_ary!( team_keys_worldi )


worldi = Group.create!( event: world, pos: 9, title: 'Gruppe I' )

worldi.add_teams_from_ary!( team_keys_worldi )



Prop.create!( key: 'db.world.quali.euro.2012/13.i.version', value: '1' )