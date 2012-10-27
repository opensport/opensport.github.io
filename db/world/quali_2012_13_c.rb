# encoding: utf-8

###########################################
##  WM 2014 - Qualification Europe Group C

world = Event.find_by_key!( 'wmq' )


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


Prop.create!( key: 'db.world.quali.2012/13.c.version', value: '1' )
