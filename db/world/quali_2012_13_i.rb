# encoding: utf-8

###########################################
##  WM 2014 - Qualification Europe Group I


world = Event.find_by_key!( 'wmq' )


#################################
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


Prop.create!( key: 'db.world.quali.2012/13.i.version', value: '1' )