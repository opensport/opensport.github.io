# encoding: utf-8



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

at = Country.find_by_key!( 'at' )
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

en = Country.find_by_key!( 'en' )
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

de = Country.find_by_key!( 'de' )
City.create_from_ary!( cities_de, country: de )


cities_es = [
  ['bilbao',    'Bilbao'],
  ['valencia',  'Valencia'],
  ['barcelona', 'Barcelona'],
  ['madrid',    'Madrid'],
  ['malaga',    'Málaga']
]

es = Country.find_by_key!( 'es' )
City.create_from_ary!( cities_es, country: es )


cities_fr = [
  ['lille',       'Lille'],
  ['paris',       'Paris'],
  ['marseille',   'Marseille'],
  ['montpellier', 'Montpellier']
]

fr = Country.find_by_key!( 'fr' )
City.create_from_ary!( cities_fr, country: fr )


cities_it = [
  ['turin',   'Turin'],
  ['milano',  'Mailand|Milano'],
  ['napoli',  'Neapel|Napoli']
]

it = Country.find_by_key!( 'it' )
City.create_from_ary!( cities_it, country: it )


cities_pt = [
  ['porto', 'Porto'],
  ['braga', 'Braga'],
  ['lisboa', 'Lissabon|Lisboa']
]

pt = Country.find_by_key!( 'pt' )
City.create_from_ary!( cities_pt, country: pt )


cities_ru = [
  ['moskva',      'Moskau|Moskva'],
  ['stpetersburg','St. Petersburg']
]

ru = Country.find_by_key!( 'ru' )
City.create_from_ary!( cities_ru, country: ru )


cities_be = [
  ['brussel',   'Brüssel|Brussel|Bruxelles|Brussels']  # de|nl|fr|en   - RCA Anderlecht
]

be = Country.find_by_key!( 'be' )
City.create_from_ary!( cities_be, country: be )


cities_ua = [
  ['kiev',     'Kiew|Kiev|Kyiv' ],
  ['donetsk',  'Donezk|Donetsk'],
  ['kharkov',  'Kharkiv|Kharkov']
]

ua = Country.find_by_key!( 'ua' )
City.create_from_ary!( cities_ua, country: ua )


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

mx = Country.find_by_key!( 'mx' )
City.create_from_ary!( cities_mx, country: mx )


Prop.create!( key: 'db.cities.version', value: '1' )