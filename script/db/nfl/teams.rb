# encoding: utf-8

######################################
## NFL Teams 2012


## todo: add "official" three letter tags

teams = [
 ['nyjets',     'New York Jets',                    'AFC East'],
 ['newengland', 'New England Patriots|New England', 'AFC East'],
 ['buffalo',    'Buffalo Bills|Buffalo',            'AFC East'],
 ['miami',      'Miami Dolphins|Miami',             'AFC East'],

 ['', 'Baltimore Ravens',    'AFC North'],
 ['', 'Cincinnati Bengals',  'AFC North'],
 ['', 'Pittsburgh Steelers', 'AFC North'],
 ['', 'Cleveland Browns',    'AFC North'],

 ['', 'Houston Texans',       'AFC South'],
 ['', 'Indianapolis Colts',   'AFC South'],
 ['', 'Tennessee Titans',     'AFC South'],
 ['', 'Jacksonville Jaguars', 'AFC South'],

 ['sandiego', 'San Diego Chargers|San Diego',     'AFC West'],
 ['denver', 'Denver Broncos|Denver',              'AFC West'],
 ['oakland', 'Oakland Raiders|Oakland',           'AFC West'],
 ['kansascity', 'Kansas City Chiefs|Kansas City', 'AFC West'],

 ['', '', ''],
 ['', '', ''],
 ['', '', ''],
 ['', '', ''],

 ['', '', ''],
 ['', '', ''],
 ['', '', ''],
 ['', '', ''],


 ['', '', ''],
 ['', '', ''],
 ['', '', ''],
 ['', '', ''],


 ['', '', ''],
 ['', '', ''],
 ['', '', ''],
 ['', '', '']]


us = Country.find_by_key!( 'us' )

Team.create_from_ary!( teams, club: true, country: us )

## The End
#################