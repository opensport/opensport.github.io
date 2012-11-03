# encoding: utf-8

de = Country.find_by_key!( 'de' )

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


Prop.create!( key: 'db.de.cities.version', value: '1' )
