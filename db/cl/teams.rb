# encoding: utf-8

de = Country.find_by_key!( 'de' )
at = Country.find_by_key!( 'at' )
es = Country.find_by_key!( 'es' )
fr = Country.find_by_key!( 'fr' )
en = Country.find_by_key!( 'en' )
pl = Country.find_by_key!( 'pl' )
gr = Country.find_by_key!( 'gr' )
ru = Country.find_by_key!( 'ru' )
cz = Country.find_by_key!( 'cz' )
nl = Country.find_by_key!( 'nl' )
dk = Country.find_by_key!( 'dk' )
pt = Country.find_by_key!( 'pt' )
it = Country.find_by_key!( 'it' )
hr = Country.find_by_key!( 'hr' )
ua = Country.find_by_key!( 'ua' )
be = Country.find_by_key!( 'be' )
by = Country.find_by_key!( 'by' )
sc = Country.find_by_key!( 'sc' )
ro = Country.find_by_key!( 'ro' )
tr = Country.find_by_key!( 'tr' )
ch = Country.find_by_key!( 'ch' )
mt = Country.find_by_key!( 'mt' )


teams = [
  [ 'porto',        'FC Porto',             pt ],
  [ 'kiew',         'Dynamo Kiew',          ua ],
  [ 'paris',        'Paris St. Germain',    fr ],
  [ 'zagreb',       'Dinamo Zagreb',        hr ],

  [ 'arsenal',      'FC Arsenal',           en ],
  [ 'schalke',      'FC Schalke 04',        de ],
  [ 'olympiacos',   'Olympiakos Piräus',    gr ],
  [ 'montpellier',  'HSC Montpellier',      fr ],

  [ 'milan',        'AC Mailand',           it ],
  [ 'zenit',        'Zenit St. Petersburg', ru ],
  [ 'anderlecht',   'RSC Anderlecht',       be ],
  [ 'malaga',       'FC Málaga',            es ],

  [ 'madrid',       'Real Madrid',          es ],
  [ 'mancity',      'Manchester City',      en ],
  [ 'ajax',         'Ajax Amsterdam',       nl ],
  [ 'dortmund',     'Borussia Dortmund',    de ],

  [ 'chelsea',      'FC Chelsea',           en ],
  [ 'donezk',       'Schachtjor Donezk',    ua ],
  [ 'juventus',     'Juventus Turin',       it ],
  [ 'nordsjalland', 'FC Nordsjælland',      dk ],

  [ 'bayern',    'Bayern München',          de ],
  [ 'valencia',  'FC Valencia',             es ],
  [ 'lille',     'OSC Lille',               fr ],
  [ 'borissow',  'BATE Borissow',           by ],

  [ 'barcelona', 'FC Barcelona',            es ],
  [ 'benfica',   'Benfica Lissabon',        pt ],
  [ 'spartak',   'Spartak Moskau',          ru ],
  [ 'celtic',    'Celtic Glasgow',          sc ],

  [ 'manunited',   'Manchester United',     en ],
  [ 'braga',       'Sporting Braga',        pt ],
  [ 'galatasaray', 'Galatasaray',           tr ],
  [ 'cluj',        'CFR Cluj',              ro ],

###################
# more teams from cl/el 2011-12
#
  [ 'inter',     'FC Internazionale Milano', it ],
  [ 'marseille', 'Olympique Marseille',      fr ],
  [ 'basel',     'FC Basel 1893',            ch ],
  [ 'napoli',    'SSC Napoli',               it ],
  [ 'moskva',    'PFC CSKA Moskva',          ru ],
  [ 'apoel',     'APOEL Nikosia',            mt ],

  [ 'az',        'AZ Alkmaar',               nl ],
  [ 'athletic',  'Athletic Bilbao',          es ],
  [ 'sporting',  'Sporting Lisboa',          pt ],
  [ 'metalist',  'FC Metalist Kharkiv',      ua ],
  [ 'atletico',  'Atlético Madrid',          es ],
  [ 'hannover',  'Hannover 96',              de ]
]


Team.create_from_ary!( teams, club: true )


Prop.create!( key: 'db.cl.teams.version', value: '1' )
Prop.create!( key: 'db.el.teams.version', value: '1' )