# encoding: utf-8

######################################
## NHL  Teams 2012

us = Country.find_by_key!( 'us' )
ca = Country.find_by_key!( 'ca' )


teams = [
 [ 'newjersey',    'New Jersey Devils',   'East/Atlantic', us ],
 [ 'nyislanders',  'New York Islanders',  'East/Atlantic', us ],
 [ 'nyrangers',    'New York Rangers',    'East/Atlantic', us ],
 [ 'philadelphia', 'Philadelphia Flyers', 'East/Atlantic', us ],
 [ 'pittsburgh',   'Pittsburgh Penguins', 'East/Atlantic', us ],

 [ 'boston',   'Boston Bruis',        'East/Northeast', us ],
 [ 'buffalo',  'Buffalo Sabres',      'East/Northeast', us ],
 [ 'montreal', 'Montreal Canadiens',  'East/Northeast', ca ],
 [ 'ottawa',   'Ottawa Senators',     'East/Northeast', ca ],
 [ 'toronto',  'Toronto Maple Leafs', 'East/Northeast', ca ],

 [ 'carolina', 'Carolina Hurricanes',   'East/Southeast', us ],
 [ 'florida',   'Florida Panthers',     'East/Southeast', us ],
 [ 'tampabay',  'Tampa Bay Lightning',  'East/Southeast', us ],
 [ 'washington', 'Washington Capitals', 'East/Southeast', us ],
 [ 'winnipeg',   'Winnipeg Jets',       'East/Southeast', ca ],

 [ 'chicago',   'Chicago Blackhawks',    'West/Central', us ],
 [ 'columbus',  'Columbus Blue Jackets', 'West/Central', us ],
 [ 'detroit',   'Detroit Red Wings',     'West/Central', us ],
 [ 'nashville',  'Nashville Predators',  'West/Central', us ],
 [ 'stlouis',    'St. Louis Blues',      'West/Central', us ],

 [ 'calgary',     'Calgary Flames',     'West/Northwest', ca ],
 [ 'colorado',    'Colorado Avalanche', 'West/Northwest', us ],
 [ 'edmonton',    'Edmonton Oilers',    'West/Northwest', ca ],
 [ 'minnesota',   'Minnesota Wild',     'West/Northwest', us ],
 [ 'vancouver',    'Vancouver Canucks', 'West/Northwest', ca ],

 [ 'anaheim',      'Anaheim Ducks',     'West/Pacific', us ],
 [ 'dallas',       'Dallas Stars',      'West/Pacific', us ],
 [ 'losangeles',   'Los Angeles Kings', 'West/Pacific', us ],
 [ 'phoenix',      'Phoenix Coyotes', '  West/Pacific', us ],
 [ 'sanjose',      'San Jose Sharks', '  West/Pacific', us ]
]

Team.create_from_ary!( teams, club: true )

Prop.create!( key: 'db.nhl.teams.version', value: '1' )