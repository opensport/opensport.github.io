# encoding: utf-8

## fix/todo:
##  chelsea, mancity, etc. already defined in cl
##  change create to create_or_update or similar (check for name convention in Rails?)

## change manunited to manutd ??


## nb: three letter codes (tags) taken from official premierleague.com site 

teams = [
  [ 'chelsea',     'Chelsea|Chelsea FC|FC Chelsea|FC Chelsea ENG',    'CHE' ],
  [ 'manunited',   'Manchester United|Man Utd|Manchester U. ENG',                 'MUN' ],
  [ 'mancity',     'Manchester City|Man City|Man. City ENG',                  'MCI' ],
  [ 'arsenal',     'Arsenal|Arsenal FC|FC Arsenal|FC Arsenal ENG',             'ARS' ],
  [ 'everton',     'Everton|Everton FC|FC Everton',             'EVE' ],
  [ 'tottenham',   'Tottenham Hotspur|Tottenham',               'TOT' ],
  [ 'westbrom',    'West Bromwich Albion|West Brom',            'WBA' ],
  [ 'westham',     'West Ham United|West Ham',                  'WHU' ],
  [ 'fulham',      'Fulham|Fulham FC|FC Fulham',                'FUL' ],
  [ 'newcastle',   'Newcastle United|Newcastle',                'NEW' ],
  [ 'swansea',     'Swansea City|Swansea',                      'SWA' ],
  [ 'stoke',       'Stoke City|Stoke',                          'STK' ],
  [ 'sunderland',  'Sunderland|Sunderland AFC|AFC Sunderland',  'SUN' ],
  [ 'liverpool',   'Liverpool|Liverpool FC|FC Liverpool',       'LIV' ],
  [ 'wigan',       'Wigan Athletic|Wigan',                      'WIG' ],
  [ 'astonvilla',  'Aston Villa',                               'AVL' ],
  [ 'southampton', 'Southampton|Southampton FC|FC Southampton', 'SOU' ],
  [ 'reading',     'Reading|Reading FC|FC Reading',             'RDG' ],
  [ 'norwich',     'Norwich City|Norwich',                      'NOR' ],
  [ 'qpr',         'Queens Park Rangers',                       'QPR' ]]


en = Country.find_by_key!( 'en' )

Team.create_from_ary!( teams, club: true, country: en )


Prop.create!( key: 'db.en.teams.version', value: '1' )