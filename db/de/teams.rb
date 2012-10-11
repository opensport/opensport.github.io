# encoding: utf-8

## fix/todo:
##  bayern, schalke, etc. already defined in cl
##  change create to create_or_update or similar (check for name convention in Rails?)


teams = [
  [ 'bayern',      'FC Bayern  München',  'FCB' ],
  [ 'frankfurt',   'Eintracht Frankfurt', 'FFM' ],
  [ 'schalke',     'FC Schalke 04',       'S04' ],
  [ 'dortmund',    'Borussia Dortmund',   'BVB' ],
  [ 'hannover',    'Hannover 96',         'H96' ],
  [ 'leverkusen',  'Bayer 04 Leverkusen', 'B04' ],
  [ 'duesseldorf', 'Fortuna Düsseldorf',  'F95' ],
  [ 'hsv',         'Hamburger SV',        'HSV' ],
  [ 'mainz',       '1. FSV Mainz 05',     'M05' ],
  [ 'mgladbach',   "Borussia M'gladbach", 'BMG' ],
  [ 'freiburg',    'SC Freiburg',         'SCF' ],
  [ 'bremen',      'Werder Bremen',       'BRE' ],
  [ 'hoffenheim',  '1899 Hoffenheim',     'HOF' ],
  [ 'nuernberg',   '1 FC Nürnberg',       'FCN' ],
  [ 'stuttgart',   'VfB Stuttgart',       'VFB' ],
  [ 'augsburg',    'FC Augsburg',         'FCA' ],
  [ 'wolfsburg',   'VfL Wolfsburg',       'WOB' ],
  [ 'fuerth',      'Greuther Fürth',      'SGF' ]
]

de = Country.find_by_key!( 'de' )

Team.create_from_ary!( teams, club: true, country: de )


Prop.create!( key: 'db.de.teams.version', value: '1' )