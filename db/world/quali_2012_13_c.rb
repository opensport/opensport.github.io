# encoding: utf-8

###########################################
##  WM 2014 - Qualification Europe Group C
#
# note: for teams see seeds/euro/teams.rb

world = Event.find_by_key!( 'wmq' )

worldc_team_keys = [ 'ger',
                     'fro',
                     'irl',
                     'kaz',
                     'aut',
                     'swe' ]

world.add_teams_from_ary( worldc_team_keys )

#################################3
# Gruppe C

worldc = Group.create!( event: world, pos: 3, title: 'Gruppe C' )

worldc.add_teams_from_ary( worldc_team_keys )


Prop.create!( key: 'db.world.quali.2012/13.c.version', value: '1' )
