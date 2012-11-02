# encoding: utf-8

## fix/todo:
##  bayern, schalke, etc. already defined in cl
##  change create to create_or_update or similar (check for name convention in Rails?)


## nb: three letter codes (tags) taken from official bundesliga.de site

teams = [
  [ 'bayern',      'FC Bayern München|Bayern München|Bayern München GER',   'FCB', 'city:muenchen' ],
  [ 'schalke',     'FC Schalke 04|FC Schalke 04 GER',                       'S04', 'city:gelsenkirchen' ],
  [ 'dortmund',    'Borussia Dortmund|Bor. Dortmund|Bor. Dortmund GER',     'BVB', 'city:dortmund' ],
  [ 'frankfurt',   'Eintracht Frankfurt|E. Frankfurt',    'FFM', 'city:frankfurt' ],
  [ 'hannover',    'Hannover 96',                         'H96', 'city:hannover' ],
  [ 'leverkusen',  'Bayer 04 Leverkusen|Bay. Leverkusen', 'B04', 'city:leverkusen' ],
  [ 'duesseldorf', 'Fortuna Düsseldorf|F. Düsseldorf',    'F95', 'city:duesseldorf' ],
  [ 'hsv',         'Hamburger SV',                        'HSV', 'city:hamburg' ],
  [ 'mainz',       '1. FSV Mainz 05',                     'M05', 'city:mainz' ],
  [ 'mgladbach',   "Borussia M'gladbach|Bor. M'gladbach", 'BMG', 'city:mgladbach' ],
  [ 'freiburg',    'SC Freiburg',                         'SCF', 'city:freiburg' ],
  [ 'bremen',      'Werder Bremen',                       'BRE', 'city:bremen' ],
  [ 'hoffenheim',  '1899 Hoffenheim',                     'HOF', 'city:hoffenheim' ],
  [ 'nuernberg',   '1. FC Nürnberg',                      'FCN', 'city:nuernberg' ],
  [ 'stuttgart',   'VfB Stuttgart',                       'VFB', 'city:stuttgart' ],
  [ 'augsburg',    'FC Augsburg',                         'FCA', 'city:augsburg' ],
  [ 'wolfsburg',   'VfL Wolfsburg',                       'WOB', 'city:wolfsburg' ],
  [ 'fuerth',      'Greuther Fürth',                      'SGF', 'city:fuerth' ]
]

de = Country.find_by_key!( 'de' )

Team.create_from_ary!( teams, club: true, country: de )


Prop.create!( key: 'db.de.teams.version', value: '1' )