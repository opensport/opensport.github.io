# encoding: utf-8

de = Country.find_by_key!( 'de' )
at = Country.find_by_key!( 'at' )
es = Country.find_by_key!( 'es' )
fr = Country.find_by_key!( 'fr' )
en = Country.find_by_key!( 'en' )
ru = Country.find_by_key!( 'ru' )
pt = Country.find_by_key!( 'pt' )
it = Country.find_by_key!( 'it' )
ua = Country.find_by_key!( 'ua' )
be = Country.find_by_key!( 'be' )
mx = Country.find_by_key!( 'mx' )


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
  ['wrneustadt',  'Wiener Neustadt|Wr. Neustadt'],
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


cities_es = [
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


cities_it = [
  ['turin',   'Turin'],
  ['milano',  'Mailand|Milano'],
  ['napoli',  'Neapel|Napoli']
]

City.create_from_ary!( cities_es, country: it )


cities_pt = [
  ['porto', 'Porto'],
  ['braga', 'Braga'],
  ['lisboa', 'Lissabon|Lisboa']
]

City.create_from_ary!( cities_es, country: pt )


cities_ru = [
  ['moskva',      'Moskau|Moskva'],
  ['stpetersburg','St. Petersburg']
]

City.create_from_ary!( cities_es, country: ru )


cities_be = [
  ['brussel',   'Brüssel|Brussel|Bruxelles|Brussels']  # de|nl|fr|en   - RCA Anderlecht
]

City.create_from_ary!( cities_es, country: be )


cities_ua = [
  ['kiev',     'Kiew|Kiev|Kyiv' ],
  ['donetsk',  'Donezk|Donetsk'],
  ['kharkov',  'Kharkiv|Kharkov']
]

City.create_from_ary!( cities_es, country: ua )


cities_mx = [
  ['mexico',        'México' ],
  ['cancun',        'Cancún' ],
  ['guadalajara',   'Guadalajara' ],
  ['tuxtla',        'Tuxtla Gutiérrez' ],
  ['leon',          'León' ],
  ['morelia',       'Morelia' ],
  ['monterrey',     'Monterrey' ],
  ['pachuca',       'Pachuca' ],
  ['puebla',        'Puebla' ],
  ['queretaro',     'Querétaro' ],
  ['sanluispotosi', 'San Luis Potosì' ],
  ['torreon',       'Torreón' ],
  ['tijuana',       'Tijuana' ],
  ['toluca',        'Toluca' ],
  ['sannicolas',    'San Nicolás de los Garza' ]
]

City.create_from_ary!( cities_es, country: mx )


Prop.create!( key: 'db.cities.version', value: '1' )