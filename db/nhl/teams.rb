# encoding: utf-8

######################################
## NHL  Teams 2012

teams = [
 [ 'newjersey',    'New Jersey Devils',   'East/Atlantic' ],
 [ 'nyislanders',  'New York Islanders',  'East/Atlantic' ],
 [ 'nyrangers',    'New York Rangers',    'East/Atlantic' ],
 [ 'philadelphia', 'Philadelphia Flyers', 'East/Atlantic' ],
 [ 'pittsburgh',   'Pittsburgh Penguins', 'East/Atlantic' ],

 [ 'boston',   'Boston Bruis',        'East/Northeast' ],
 [ 'buffalo',  'Buffalo Sabres',      'East/Northeast' ],
 [ 'montreal', 'Montreal Canadiens',  'East/Northeast' ],
 [ 'ottawa',   'Ottawa Senators',     'East/Northeast' ],
 [ 'toronto',  'Toronto Maple Leafs', 'East/Northeast' ],

 [ 'carolina', 'Carolina Hurricanes',   'East/Southeast' ],
 [ 'florida',   'Florida Panthers',     'East/Southeast' ],
 [ 'tampabay',  'Tampa Bay Lightning',  'East/Southeast' ],
 [ 'washington', 'Washington Capitals', 'East/Southeast' ],
 [ 'winnipeg',   'Winnipeg Jets',       'East/Southeast' ],

 [ 'chicago',   'Chicago Blackhawks',    'West/Central' ],
 [ 'columbus',  'Columbus Blue Jackets', 'West/Central' ],
 [ 'detroit',   'Detroit Red Wings',     'West/Central' ],
 [ 'nashville',  'Nashville Predators',  'West/Central' ],
 [ 'stlouis',    'St. Louis Blues',      'West/Central' ],

 [ 'calgary',     'Calgary Flames',     'West/Northwest' ],
 [ 'colorado',    'Colorado Avalanche', 'West/Northwest' ],
 [ 'edmonton',    'Edmonton Oilers',    'West/Northwest' ],
 [ 'minnesota',   'Minnesota Wild',     'West/Northwest' ],
 [ 'vancouver',    'Vancouver Canucks', 'West/Northwest' ],

 [ 'anaheim',      'Anaheim Ducks',     'West/Pacific' ],
 [ 'dallas',       'Dallas Stars',      'West/Pacific' ],
 [ 'losangeles',   'Los Angeles Kings', 'West/Pacific' ],
 [ 'phoenix',      'Phoenix Coyotes', '  West/Pacific' ],
 [ 'sanjose',      'San Jose Sharks', '  West/Pacific' ]
]

us = Country.find_by_key!( 'us' )

Team.create_from_ary!( teams, club: true, country: us )

Prop.create!( key: 'db.nhl.teams.version', value: '1' )