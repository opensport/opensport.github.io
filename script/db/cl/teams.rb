# encoding: utf-8

teams = [
  [ 'porto',        'FC Porto' ],
  [ 'kiew',         'Dynamo Kiew' ],
  [ 'paris',        'Paris St. Germain' ],
  [ 'zagreb',       'Dinamo Zagreb' ],

  [ 'arsenal',      'FC Arsenal' ],
  [ 'schalke',      'FC Schalke 04' ],
  [ 'olympiacos',   'Olympiakos Piräus' ],
  [ 'montpellier',  'HSC Montpellier' ],

  [ 'milan',        'AC Mailand' ],
  [ 'zenit',        'Zenit St. Petersburg' ],
  [ 'anderlecht',   'RSC Anderlecht' ],
  [ 'malaga',       'FC Málaga' ],

  [ 'madrid',       'Real Madrid' ],
  [ 'mancity',      'Manchester City' ],
  [ 'ajax',         'Ajax Amsterdam' ],
  [ 'dortmund',     'Borussia Dortmund' ],

  [ 'chelsea',      'FC Chelsea' ],
  [ 'donezk',       'Schachtjor Donezk' ],
  [ 'juventus',     'Juventus Turin' ],
  [ 'nordsjalland', 'FC Nordsjælland' ],

  [ 'bayern',    'Bayern München' ],
  [ 'valencia',  'FC Valencia' ],
  [ 'lille',     'OSC Lille' ],
  [ 'borissow',  'BATE Borissow' ],

  [ 'barcelona', 'FC Barcelona' ],
  [ 'benfica',   'Benfica Lissabon' ],
  [ 'spartak',   'Spartak Moskau' ],
  [ 'celtic',    'Celtic Glasgow' ],

  [ 'manunited',   'Manchester United' ],
  [ 'braga',       'Sporting Braga' ],
  [ 'galatasaray', 'Galatasaray' ],
  [ 'cluj',        'CFR Cluj' ],

###################
# more teams from cl/el 2011-12
#
  [ 'inter',     'FC Internazionale Milano' ],
  [ 'marseille', 'Olympique Marseille' ],
  [ 'basel',     'FC Basel 1893' ],
  [ 'napoli',    'SSC Napoli' ],
  [ 'moskva',    'PFC CSKA Moskva' ],
  [ 'apoel',     'APOEL Nikosia' ],

  [ 'az',        'AZ Alkmaar' ],
  [ 'athletic',  'Athletic Bilbao' ],
  [ 'sporting',  'Sporting Lisboa' ],
  [ 'metalist',  'FC Metalist Kharkiv' ],
  [ 'atletico',  'Atlético Madrid' ],
  [ 'hannover',  'Hannover 96' ]
]

Team.create_from_ary!( teams )


Prop.create!( :key => 'db.cl.teams.version', :value => '1' )
Prop.create!( :key => 'db.el.teams.version', :value => '1' )