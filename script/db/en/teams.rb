# encoding: utf-8

## fix/todo:
##  chelsea, mancity, etc. already defined in cl
##  change create to create_or_update or similar (check for name convention in Rails?)

## change manunited to manutd ??


## nb: three letter codes (tags) taken from official premierleague.com site 

teams = [
  [ 'chelsea',     'Chelsea',              'CHE' ],
  [ 'manunited',   'Manchester United',    'MUN' ],
  [ 'mancity',     'Manchester City',      'MCI' ],
  [ 'everton',     'Everton',              'EVE' ],
  [ 'tottenham',   'Tottenham Hotspur',    'TOT' ],
  [ 'westbrom',    'West Bromwich Albion', 'WBA' ],
  [ 'arsenal',     'Arsenal',              'ARS' ],
  [ 'westham',     'West Ham United',      'WHU' ],
  [ 'fulham',      'Fulham',               'FUL' ],
  [ 'newcastle',   'Newcastle United',     'NEW' ],
  [ 'swansea',     'Swansea City',         'SWA' ],
  [ 'stoke',       'Stoke City',           'STK' ],
  [ 'sunderland',  'Sunderland',           'SUN' ],
  [ 'liverpool',   'Liverpool',            'LIV' ],
  [ 'wigan',       'Wigan Athletic',       'WIG' ],
  [ 'astonvilla',  'Aston Villa',          'AVL' ],
  [ 'southampton', 'Southampton',          'SOU' ],
  [ 'reading',     'Reading',              'RDG' ],
  [ 'norwich',     'Norwich City',         'NOR' ],
  [ 'qpr',         'Queens Park Rangers',  'QPR' ]]


en = Country.find_by_key!( 'en' )

Team.create_from_ary!( teams, club: true, country: en )


Prop.create!( key: 'db.en.teams.version', value: '1' )