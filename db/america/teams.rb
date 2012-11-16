# encoding: utf-8

##############
## south america

ar = Country.find_by_key!( 'ar' )
br = Country.find_by_key!( 'br' )
cl = Country.find_by_key!( 'cl' )
py = Country.find_by_key!( 'py' )
uy = Country.find_by_key!( 'uy' )
co = Country.find_by_key!( 'co' )
ec = Country.find_by_key!( 'ec' )
pe = Country.find_by_key!( 'pe' )
ve = Country.find_by_key!( 've' )
bo = Country.find_by_key!( 'bo' )

teams_america1 = [
  [ 'arg', 'Argentinien',   'ARG', ar ],
  [ 'bra', 'Brasilien',     'BRA', br ],
  [ 'chi', 'Chile',         'CHI', cl ],
  [ 'par', 'Paraguay',      'PAR', py ],
  [ 'uru', 'Uruguay',       'URU', uy ],
  [ 'col', 'Kolumbien',     'COL', co ],
  [ 'ecu', 'Ecuador',       'ECU', ec ],
  [ 'per', 'Peru',          'PER', pe ],
  [ 'ven', 'Venezuela',     'VEN', ve ],
  [ 'bol', 'Bolivien',      'BOL', bo ]
]


#####################
#### north/central america & caribbean islands

mx = Country.find_by_key!( 'mx' )
us = Country.find_by_key!( 'us' )
hn = Country.find_by_key!( 'hn' )
cr = Country.find_by_key!( 'cr' )
sv = Country.find_by_key!( 'sv' )
gy = Country.find_by_key!( 'gy' )

teams_america2 = [
  [ 'mex', 'Mexiko',        'MEX', mx ],
  [ 'usa', 'Vereinigte Staaten|United States', 'USA', us ],
  [ 'hon', 'Honduras',      'HON', hn ],
  [ 'crc', 'Costa Rica',    'CRC', cr ],
  [ 'slv', 'El Salvador',   'SLV', sv ],
  [ 'guy', 'Guyana',        'GUY', gy ],
]


teams = teams_america1 + teams_america2

Team.create_from_ary!( teams, national: true )

Prop.create!( key: 'db.america.teams.version', value: '1' )
