# encoding: utf-8

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
  [ 'civ', 'Elfenbeinküste', 'CIV', ci ],
  [ 'gha', 'Ghana',          'GHA', gh ],
  [ 'cmr', 'Kamerun',        'CMR', cm ],
  [ 'nga', 'Nigeria',        'NGA', ng ],
  [ 'rsa', 'Südafrika',      'RSA', za ]
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
  [ 'kor', 'Südkorea', 'KOR', kr ]
]

###############################
## oceania
  
nz = Country.find_by_key!( 'nz' )

teams_oceania = [
  [ 'nzl', 'Neuseeland', 'NZL', nz ]
]

teams = teams_africa + teams_asia + teams_oceania

Team.create_from_ary!( teams, national: true )

## The End
#################