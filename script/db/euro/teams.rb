# encoding: utf-8


pl = Country.find_by_key!( 'pl' )
gr = Country.find_by_key!( 'gr' )
ru = Country.find_by_key!( 'ru' )
cz = Country.find_by_key!( 'cz' )
nl = Country.find_by_key!( 'nl' )
dk = Country.find_by_key!( 'dk' )
de = Country.find_by_key!( 'de' )
pt = Country.find_by_key!( 'pt' )
es = Country.find_by_key!( 'es' ) 
it = Country.find_by_key!( 'it' )
ie = Country.find_by_key!( 'ie' )
hr = Country.find_by_key!( 'hr' )
ua = Country.find_by_key!( 'ua' )
se = Country.find_by_key!( 'se' )
fr = Country.find_by_key!( 'fr' )
en = Country.find_by_key!( 'en' )
fo = Country.find_by_key!( 'fo' )
kz = Country.find_by_key!( 'kz' )
at = Country.find_by_key!( 'at' )
by = Country.find_by_key!( 'by' )
fi = Country.find_by_key!( 'fi' )
ge = Country.find_by_key!( 'ge' )


teams = [
  [ 'pol', 'Polen',        'POL', pl ],
  [ 'gre', 'Griechenland', 'GRE', gr ],
  [ 'rus', 'Russland',     'RUS', ru ],
  [ 'cze', 'Tschechien',   'CZE', cz ],
  [ 'ned', 'Niederlande',  'NED', nl ],
  [ 'den', 'Dänemark',     'DEN', dk ],
  [ 'ger', 'Deutschland',  'GER', de ],
  [ 'por', 'Portugal',     'POR', pt ],
  [ 'esp', 'Spanien',      'ESP', es ],
  [ 'ita', 'Italien',      'ITA', it ],
  [ 'irl', 'Irland',       'IRL', ie ],
  [ 'cro', 'Kroatien',     'CRO', hr ],
  [ 'ukr', 'Ukraine',      'UKR', ua ],
  [ 'swe', 'Schweden',     'SWE', se ],
  [ 'fra', 'Frankreich',   'FRA', fr ],
  [ 'eng', 'England',      'ENG', en ],

## some more teams for wm quali

  [ 'fro', 'Färöer',       'FRO', fo ],
  [ 'kaz', 'Kasachstan',   'KAZ', kz ],
  [ 'aut', 'Österreich',   'AUT', at ],
  [ 'blr', 'Weißrussland', 'BLR', by ],
  [ 'fin', 'Finnland',     'FIN', fi ],
  [ 'geo', 'Georgien',     'GEO', ge ]
]


Team.create_from_ary!( teams, national: true )


Prop.create!( key: 'db.euro.teams.version', value: '1' )
