# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

##################################
##  WM 2014 - Qualification Europe


world = Event.create!( key:      'wmql',
                       title:    'World Cup Quali. Europe 2012/13',
                       start_at: Time.cet( '2012-09-07 00:00' ))


world1 = Round.create!( :event => world, :pos => 1, :title => 'Quali - 7.+11. Sep 2012' )
world2 = Round.create!( :event => world, :pos => 2, :title => 'Quali - 12.+16. Okt 2012' )
world3 = Round.create!( :event => world, :pos => 3, :title => 'Quali - 22.+26. Mär 2013' )
world4 = Round.create!( :event => world, :pos => 4, :title => 'Quali - 7.+11. Jun 2013' )
world5 = Round.create!( :event => world, :pos => 5, :title => 'Quali - 6.+10. Sep 2013' )
world6 = Round.create!( :event => world, :pos => 6, :title => 'Quali - 11.+15. Okt 2013' )


Prop.create!( key: 'db.world.quali.2012/13.version', value: '1' )