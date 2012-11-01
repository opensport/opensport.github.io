# encoding: utf-8

##############
## south america

ar = Country.find_by_key!( 'ar' )
br = Country.find_by_key!( 'br' )
cl = Country.find_by_key!( 'cl' )
py = Country.find_by_key!( 'py' )
uy = Country.find_by_key!( 'uy' )

teams_america1 = [
  [ 'arg', 'Argentinien',   'ARG', ar ],
  [ 'bra', 'Brasilien',     'BRA', br ],
  [ 'chi', 'Chile',         'CHI', cl ],
  [ 'par', 'Paraguay',      'PAR', py ],
  [ 'uru', 'Uruguay',       'URU', uy ]
]


#####################
#### north/central america & caribbean islands

mx = Country.find_by_key!( 'mx' )
us = Country.find_by_key!( 'us' )
hn = Country.find_by_key!( 'hn' )

teams_america2 = [
  [ 'mex', 'Mexiko',        'MEX', mx ],
  [ 'usa', 'Vereinigte Staaten|United States', 'USA', us ],
  [ 'hon', 'Honduras',      'HON', hn ]
]


########################
## africa
  
dz = Country.find_by_key!( 'dz' )
ci = Country.find_by_key!( 'ci' )
gh = Country.find_by_key!( 'gh' )
cm = Country.find_by_key!( 'cm' )
ng = Country.find_by_key!( 'ng' )
za = Country.find_by_key!( 'za' )

teams_africa = [
  [ 'alg', 'Algerien',       'ALG', dz ],
  [ 'civ', 'Elfenbeinküste|Elfenbeinkueste', 'CIV', ci ],
  [ 'gha', 'Ghana',          'GHA', gh ],
  [ 'cmr', 'Kamerun',        'CMR', cm ],
  [ 'nga', 'Nigeria',        'NGA', ng ],
  [ 'rsa', 'Südafrika|Suedafrika',      'RSA', za ]
]


#############################
## asia w/ australia

au  = Country.find_by_key!( 'au' )
jp  = Country.find_by_key!( 'jp' )
kp  = Country.find_by_key!( 'kp' )
kr  = Country.find_by_key!( 'kr' )

teams_asia = [
  [ 'aus', 'Australien', 'AUS', au ],
  [ 'jpn', 'Japan',      'JPN', jp ],
  [ 'prk', 'Nordkorea',  'PRK', kp ],
  [ 'kor', 'Südkorea|Suedkorea', 'KOR', kr ]
]

###############################
## oceania
  
nz = Country.find_by_key!( 'nz' )

teams_oceania = [
  [ 'nzl', 'Neuseeland', 'NZL', nz ]
]

teams = teams_america1 + teams_america2 + teams_africa + teams_asia + teams_oceania

Team.create_from_ary!( teams, national: true )


Prop.create!( key: 'db.world.teams.version', value: '1' )
