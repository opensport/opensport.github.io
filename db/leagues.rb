# encoding: utf-8

#############################
## national leagues & cups

at = Country.find_by_key!( 'at' )
de = Country.find_by_key!( 'de' )
en = Country.find_by_key!( 'en' )
ro = Country.find_by_key!( 'ro' )
mx = Country.find_by_key!( 'mx' )


leagues_club = [
 [ 'at',          'Österr. Bundesliga',     at ],
 [ 'at.cup',      'ÖFB Cup',                at ],
 [ 'de',          'Deutsche Bundesliga',    de ],
 [ 'en',          'English Premier League', en ],
 [ 'ro',          'Romania Liga 1',         ro ],
 [ 'mx.apertura', 'México Primera División Apertura', mx ]
]

League.create_from_ary!( leagues_club, club: true )


########################################
## international leagues w/ football clubs teams

leagues_club_intl = [
  [ 'cl', 'Champions League' ],
  [ 'el', 'Europa League' ]
]

League.create_from_ary!( leagues_club_intl, club: true )


#######################################
## internationl tournaments & cups w/ national teams

leagues_intl = [
  [ 'euro', 'Euro'      ],
  [ 'wm',   'World Cup' ],   ## change key to world??
  [ 'wmq',  'World Cup Quali' ]
]

League.create_from_ary!( leagues_intl, club: false )



Prop.create!( key: 'db.leagues.version', value: '1' )
