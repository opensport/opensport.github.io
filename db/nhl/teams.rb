# encoding: utf-8

######################################
## NHL  Teams 2012

us = Country.find_by_key!( 'us' )
ca = Country.find_by_key!( 'ca' )


teams = [
 [ 'newjersey',    'New Jersey Devils',   'East/Atlantic', us ],
 [ 'nyislanders',  'New York Islanders',  'East/Atlantic', us, 'city:newyork' ],
 [ 'nyrangers',    'New York Rangers',    'East/Atlantic', us, 'city:newyork' ],
 [ 'philadelphia', 'Philadelphia Flyers', 'East/Atlantic', us, 'city:philadelphia' ],
 [ 'pittsburgh',   'Pittsburgh Penguins', 'East/Atlantic', us, 'city:pittsburgh' ],

 [ 'boston',   'Boston Bruis',        'East/Northeast', us, 'city:boston' ],
 [ 'buffalo',  'Buffalo Sabres',      'East/Northeast', us, 'city:buffalo' ],
 [ 'montreal', 'Montreal Canadiens',  'East/Northeast', ca, 'city:montreal' ],
 [ 'ottawa',   'Ottawa Senators',     'East/Northeast', ca, 'city:ottawa' ],
 [ 'toronto',  'Toronto Maple Leafs', 'East/Northeast', ca, 'city:toronto' ],

 [ 'carolina', 'Carolina Hurricanes',   'East/Southeast', us ],
 [ 'florida',   'Florida Panthers',     'East/Southeast', us ],
 [ 'tampabay',  'Tampa Bay Lightning',  'East/Southeast', us ],
 [ 'washington', 'Washington Capitals', 'East/Southeast', us, 'city:washington' ],
 [ 'winnipeg',   'Winnipeg Jets',       'East/Southeast', ca, 'city:winnipeg' ],

 [ 'chicago',   'Chicago Blackhawks',    'West/Central', us, 'city:chicago' ],
 [ 'columbus',  'Columbus Blue Jackets', 'West/Central', us, 'city:columbus' ],
 [ 'detroit',   'Detroit Red Wings',     'West/Central', us, 'city:detroit' ],
 [ 'nashville',  'Nashville Predators',  'West/Central', us, 'city:nashville' ],
 [ 'stlouis',    'St. Louis Blues',      'West/Central', us, 'city:stlouis' ],

 [ 'calgary',     'Calgary Flames',     'West/Northwest', ca, 'city:calgary' ],
 [ 'colorado',    'Colorado Avalanche', 'West/Northwest', us ],
 [ 'edmonton',    'Edmonton Oilers',    'West/Northwest', ca, 'city:edmonton' ],
 [ 'minnesota',   'Minnesota Wild',     'West/Northwest', us ],
 [ 'vancouver',    'Vancouver Canucks', 'West/Northwest', ca, 'city:vancouver' ],

 [ 'anaheim',      'Anaheim Ducks',     'West/Pacific', us, 'city:anaheim' ],
 [ 'dallas',       'Dallas Stars',      'West/Pacific', us, 'city:dallas' ],
 [ 'losangeles',   'Los Angeles Kings', 'West/Pacific', us, 'city:losangeles' ],
 [ 'phoenix',      'Phoenix Coyotes', '  West/Pacific', us, 'city:phoenix' ],
 [ 'sanjose',      'San Jose Sharks', '  West/Pacific', us, 'city:sanjose' ]
]

Team.create_from_ary!( teams, club: true )

Prop.create!( key: 'db.nhl.teams.version', value: '1' )