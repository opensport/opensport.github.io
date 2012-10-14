# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)

##################################
##  WM 2014 - Qualification Europe


world = Event.create!( key:      'wmq',
                       title:    'World Cup Quali. Europe 2012/13',
                       start_at: Time.cet( '2012-09-07 00:00' ))


world1  = Round.create!( event: world, pos: 1,  title: 'Quali 1. Spieltag', start_at: Time.cet( '2012-09-07' ), title2: 'Fr. 7. Sep 2012' )
world2  = Round.create!( event: world, pos: 2,  title: 'Quali 2. Spieltag', start_at: Time.cet( '2012-09-11' ), title2: 'Di. 11. Sep 2012' )
world3  = Round.create!( event: world, pos: 3,  title: 'Quali 3. Spieltag', start_at: Time.cet( '2012-10-12' ), title2: 'Fr. 12. Okt 2012' )
world4  = Round.create!( event: world, pos: 4,  title: 'Quali 4. Spieltag', start_at: Time.cet( '2012-10-16' ), title2: 'Di. 16. Okt 2012' )
world5  = Round.create!( event: world, pos: 5,  title: 'Quali 5. Spieltag', start_at: Time.cet( '2013-03-22' ), title2: 'Fr. 22. Mär 2013' )
world6  = Round.create!( event: world, pos: 6,  title: 'Quali 6. Spieltag', start_at: Time.cet( '2013-03-26' ), title2: 'Di. 26. Mär 2013' )
world7  = Round.create!( event: world, pos: 7,  title: 'Quali 7. Spieltag', start_at: Time.cet( '2013-06-07' ), title2: 'Fr. 7. Jun 2013' )
world8  = Round.create!( event: world, pos: 8,  title: 'Quali 8. Spieltag', start_at: Time.cet( '2013-06-11' ), title2: 'Di. 11. Jun 2013' )
world9  = Round.create!( event: world, pos: 9,  title: 'Quali 9. Spieltag', start_at: Time.cet( '2013-09-06' ), title2: 'Fr. 6. Sep 2013' )
world10 = Round.create!( event: world, pos: 10, title: 'Quali 10. Spieltag', start_at: Time.cet( '2013-09-10' ), title2: 'Di. 10. Sep 2013' )
world11 = Round.create!( event: world, pos: 11, title: 'Quali 11. Spieltag', start_at: Time.cet( '2013-10-11' ), title2: 'Fr. 11. Okt 2013' )
world12 = Round.create!( event: world, pos: 12, title: 'Quali 12. Spieltag', start_at: Time.cet( '2013-10-15' ), title2: 'Di. 15. Okt 2013' )

Prop.create!( key: 'db.world.quali.2012/13.version', value: '1' )