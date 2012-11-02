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


### todo/fix: add regions (Stmk., NOE, OOE, etc,)

cities_at = [
  ['wien',        'Wien|Vienna'],
  ['innsbruck',   'Innsbruck'],
  ['moedling',    'Mödling|Moedling'],
  ['salzburg',    'Salzburg'],
  ['graz',        'Graz'],
  ['linz',        'Linz'],
  ['mattersburg', 'Mattersburg'],
  ['ried',        'Ried'],
  ['wrneustad',   'Wiener Neustadt|Wr. Neustadt'],
  ['wolfsberg',   'Wolfsberg']
]

City.create_from_ary!( cities_at, country: at )

cities_en = [
  ['manchester',  'Manchester'],
  ['london',      'London'],
  ['liverpool',   'Liverpool'],
  ['birmingham',  'Birmingham'],  # e.g.Aston Villa
  ['blackburn',   'Blackburn'],
  ['westbrom',    'West Bromwich'],
  ['newcastle',   'Newcastle upon Tyne'],
  ['stoke',       'Stoke-on-Trent'],
  ['sunderland',  'Sunderland'],
  ['wigan',       'Wigan'],
  ['southampton', 'Southampton'],
  ['reading',     'Reading'],
  ['norwich',     'Norwich'],
  ['swansea',     'Swansea']
]

City.create_from_ary!( cities_en, country: en )


cities_de = [
  ['hoffenheim',    'Hoffenheim'],
  ['nuernberg',     'Nürnberg'],
  ['stuttgart',     'Stuttgart'],
  ['augsburg',      'Augsburg'],
  ['wolfsburg',     'Wolfsburg'],
  ['fuerth',        'Fürth'],
  ['muenchen',      'München'],
  ['gelsenkirchen', 'Gelsenkirchen'],
  ['dortmund',      'Dortmund'],
  ['frankfurt',     'Frankfurt'],
  ['hannover',      'Hannover'],
  ['leverkusen',    'Leverkusen'],
  ['duesseldorf',   'Düsseldorf'],
  ['hamburg',       'Hamburg'],
  ['mainz',         'Mainz'],
  ['mgladbach',     "Mönchengladbach|M'gladbach" ],
  ['freiburg',      'Freiburg'],
  ['bremen',        'Bremen']
]

City.create_from_ary!( cities_de, country: de )


cites_es = [
  ['bilbao',    'Bilbao'],
  ['valencia',  'Valencia'],
  ['barcelona', 'Barcelona'],
  ['madrid',    'Madrid'],
  ['malaga',    'Málaga']
]

City.create_from_ary!( cities_es, country: es )


cities_fr = [
  ['lille',       'Lille'],
  ['paris',       'Paris'],
  ['marseille',   'Marseille'],
  ['montpellier', 'Montpellier']
]

City.create_from_ary!( cities_es, country: fr )


## todo: add  it, pt, ru, be, mx  and more


Prop.create!( key: 'db.cities.version', value: '1' )