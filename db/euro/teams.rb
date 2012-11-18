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

ch = Country.find_by_key!( 'ch' )
rs = Country.find_by_key!( 'rs' )
si = Country.find_by_key!( 'si' )
sk = Country.find_by_key!( 'sk' )

tr = Country.find_by_key!( 'tr' )
ro = Country.find_by_key!( 'ro' )


teams = [
  [ 'pol', 'Polen|Poland',        'POL', pl ],
  [ 'gre', 'Griechenland|Greece', 'GRE', gr ],
  [ 'rus', 'Russland|Russia',     'RUS', ru ],
  [ 'cze', 'Tschechien|Czech Republic',   'CZE', cz ],
  [ 'ned', 'Niederlande|Netherlands',  'NED', nl ],
  [ 'den', 'Dänemark|Daenemark',     'DEN', dk ],
  [ 'ger', 'Deutschland|Germany',  'GER', de ],
  [ 'por', 'Portugal',     'POR', pt ],
  [ 'esp', 'Spanien|Spain',      'ESP', es ],
  [ 'ita', 'Italien|Italy',      'ITA', it ],
  [ 'irl', 'Irland',       'IRL', ie ],
  [ 'cro', 'Kroatien|Croatia',     'CRO', hr ],
  [ 'ukr', 'Ukraine',      'UKR', ua ],
  [ 'swe', 'Schweden|Sweden',     'SWE', se ],
  [ 'fra', 'Frankreich|France',   'FRA', fr ],
  [ 'eng', 'England',      'ENG', en ],

## some more teams for wm quali

  [ 'fro', 'Färöer|Färöer Inseln',  'FRO', fo ],
  [ 'kaz', 'Kasachstan',   'KAZ', kz ],
  [ 'aut', 'Österreich|Oesterreich|Austria',   'AUT', at ],
  [ 'blr', 'Weißrussland', 'BLR', by ],
  [ 'fin', 'Finnland',     'FIN', fi ],
  [ 'geo', 'Georgien',     'GEO', ge ],
  
## some more teams for wm 2010

 [ 'sui', 'Schweiz|Switzerland',      'SUI', ch ], 
 [ 'srb', 'Serbien',      'SRB', rs ],
 [ 'svn', 'Slowenien',    'SVN', si ],
 [ 'svk', 'Slowakei',     'SVK', sk ],
 [ 'tur', 'Türkei|Turkey',  'TUR', tr ],
 [ 'rou', 'Rumänien|Romania',   'ROU', ro ],
]


Team.create_from_ary!( teams, national: true )


## The End
#################