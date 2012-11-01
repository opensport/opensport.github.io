
League.create!( key: 'at',     title: 'Österr. Bundesliga', club: true )
League.create!( key: 'at.cup', title: 'ÖFB Cup',            club: true )

League.create!( key: 'cl', title: 'Champions League', club: true )
League.create!( key: 'el', title: 'Europa League',    club: true )

League.create!( key: 'de', title: 'Deutsche Bundesliga', club: true )
League.create!( key: 'en', title: 'English Premier League', club: true )
League.create!( key: 'ro', title: 'Romania Liga 1', club: true )

League.create!( key: 'mx.apertura', title: 'México Primera División Apertura', club: true )



League.create!( key: 'euro', title: 'Euro',            club: false )

League.create!( key: 'wm',   title: 'World Cup',       club: false )   ## change key to world??
League.create!( key: 'wmq',  title: 'World Cup Quali', club: false )




Prop.create!( key: 'db.leagues.version', value: '1' )
