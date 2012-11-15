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
cy = Country.find_by_key!( 'cy' )


  ## use en/teams.rb
  ### [ 'chelsea',      'FC Chelsea',           en ],
  ### [ 'manunited',   'Manchester United',     en ],
  ### [ 'arsenal',      'FC Arsenal',           en ],
  ### [ 'mancity',      'Manchester City',      en ],

  ## use de/teams.rb
  ## [ 'bayern',    'Bayern München',          de ],
  ## [ 'schalke',      'FC Schalke 04',        de ],
  ## [ 'dortmund',     'Borussia Dortmund',    de ],


teams = [
  [ 'malaga',       'FC Málaga|Malaga CF|CF Malaga',            es, 'city:malaga' ],
  [ 'madrid',       'Real Madrid',          es, 'city:madrid' ],
  [ 'valencia',  'FC Valencia|CF Valencia',             es, 'city:valencia' ],
  [ 'barcelona', 'FC Barcelona',            es, 'city:barcelona' ],
  [ 'atletico',  'Atlético Madrid',          es, 'city:madrid' ],
  [ 'athletic',  'Athletic Bilbao',          es, 'city:bilbao' ],

  [ 'porto',        'FC Porto',             pt, 'city:porto' ],
  [ 'benfica',   'Benfica Lissabon|Benfica Lis.',      pt, 'city:lisboa' ],
  [ 'braga',       'Sporting Braga',        pt, 'city:braga' ],
  [ 'sporting',  'Sporting Lisboa',          pt, 'city:lisboa' ],

  [ 'milan',        'AC Mailand|AC Milan',           it, 'city:milano' ],
  [ 'inter',     'FC Internazionale Milano', it, 'city:milano' ],
  [ 'napoli',    'SSC Napoli',               it, 'city:napoli' ],
  [ 'juventus',     'Juventus Turin',       it, 'city:turin' ],

  [ 'paris',        'Paris St. Germain|Paris S.Germai|Paris Saint Germain',    fr, 'city:paris' ],
  [ 'montpellier',  'HSC Montpellier|Montpellier',      fr, 'city:montpellier' ],
  [ 'lille',     'OSC Lille|Lille OSC',               fr, 'city:lille' ],
  [ 'marseille', 'Olympique Marseille',      fr, 'city:marseille' ],

  [ 'kiew',         'Dynamo Kiew|FC Dynamo Kiew|Dynamo Kiev',          ua, 'city:kiev' ],
  [ 'donezk',       'Schachtjor Donezk|Shakhtar Don.|Shakhtar Donetsk',    ua, 'city:donetsk' ],
  [ 'metalist',  'FC Metalist Kharkiv',      ua, 'city:kharkov' ],

  [ 'zenit',        'Zenit St. Petersburg|Zenit Petersb.|FC Zenit St Petersburg', ru, 'city:stpetersburg' ],
  [ 'spartak',   'Spartak Moskau|Spartak Moscow',     ru, 'city:moskva' ],
  [ 'moskva',    'PFC CSKA Moskva',          ru, 'city:moskva' ],

  [ 'anderlecht',   'RSC Anderlecht',       be, 'city:brussel' ],

  [ 'ajax',         'Ajax Amsterdam',       nl, 'city:amsterdam' ],
  [ 'az',        'AZ Alkmaar',               nl, 'city:alkmaar' ],

  [ 'zagreb',       'Dinamo Zagreb|NK Dinamo Zagreb',        hr, 'city:zagreb' ],
  [ 'olympiacos',   'Olympiakos Piräus|Olympiakos P.|Olympiakos Piraeus',    gr, 'city:piraeus' ],
  [ 'nordsjalland', 'FC Nordsjælland|Nordsjaelland|FC Nordsjaelland',      dk, 'city:farum' ],
  [ 'borissow',  'BATE Borissow|Bate Borisov',           by, 'city:borisov' ],
  [ 'celtic',    'Celtic Glasgow',          sc, 'city:glasgow' ],
  [ 'galatasaray', 'Galatasaray|Galatasaray Istanbul',           tr, 'city:istanbul' ],
  [ 'cluj',        'CFR Cluj',              ro, 'city:cluj' ],
  [ 'basel',     'FC Basel 1893',            ch, 'city:basel' ],
  [ 'apoel',     'APOEL Nikosia',            cy, 'city:nikosia' ]
]


Team.create_from_ary!( teams, club: true )


Prop.create!( key: 'db.cl.teams.version', value: '1' )
Prop.create!( key: 'db.el.teams.version', value: '1' )