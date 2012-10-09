# encoding: utf-8

## fix/todo:
##  bayern, schalke, etc. already defined in cl
##  change create to create_or_update or similar (check for name convention in Rails?)


teams = [
  [ 'bayern',      'FC Bayern' ],
  [ 'frankfurt',   'E Frankfurt' ],
  [ 'schalke',     'FC Schalke 04' ],
  [ 'dortmund',    'B Dortmund' ],
  [ 'hannover',    'Hannover 96' ],
  [ 'leverkusen',  'B Leverkusen' ],
  [ 'duesseldorf', 'F Düsseldorf' ],
  [ 'hsv',         'Hamburger SV' ],
  [ 'mainz',       'Mainz 05' ],
  [ 'mgladbach',   'B M gladbach' ],
  [ 'freiburg',    'SC Freiburg' ],
  [ 'bremen',      'W Bremen' ],
  [ 'hoffenheim',  'Hoffenheim' ],
  [ 'nuernberg',   '1 FC Nürnberg' ],
  [ 'stuttgart',   'VfB Stuttgart' ],
  [ 'augsburg',    'FC Augsburg' ],
  [ 'wolfsburg',   'VfL Wolfsburg' ],
  [ 'fuerth',      'G Fuerth' ]
]

de = Country.find_by_key!( 'de' )

Team.create_from_ary!( teams, club: true, country: de )


Prop.create!( key: 'db.de.teams.version', value: '1' )