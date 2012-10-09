# encoding: utf-8

## NB: for keys use internet two letter code

countries = [
  [ 'de', 'Deutschland',  'GER' ],
  [ 'at', 'Österreich',   'AUT' ],
  [ 'es', 'Spanien',      'ESP' ],
  [ 'fr', 'Frankreich',   'FRA' ],

  [ 'en', 'England',      'ENG' ],  # NB: not a valid internet country domain? - it's uk - what to use - anything better?
  [ 'sc', 'Schottland',   'SCO' ],    # NB: not a valid internet country domain? - it's uk - what to use - anything better?
  
  [ 'pl', 'Polen',        'POL' ],
  [ 'gr', 'Griechenland', 'GRE' ],
  [ 'ru', 'Russland',     'RUS' ],
  [ 'cz', 'Tschechien',   'CZE' ],
  [ 'nl', 'Niederlande',  'NED' ],
  [ 'dk', 'Dänemark',     'DEN' ],
  [ 'pt', 'Portugal',     'POR' ],
  [ 'it', 'Italien',      'ITA' ],
  [ 'ie', 'Irland',       'IRL' ],
  [ 'hr', 'Kroatien',     'CRO' ],  # NB: local name: Hrvatska
  [ 'ua', 'Ukraine',      'UKR' ],
  [ 'se', 'Schweden',     'SWE' ],
  [ 'fo', 'Färöer',       'FRO' ],  # todo: check if domain fo exists?
  
  [ 'be', 'Belgien',      'BEL' ],  
  [ 'by', 'Belarus',      'BLR' ],
  [ 'ro', 'Rumänien',     'ROM' ],
  [ 'tr', 'Türkei',       'TUR' ],
  [ 'ch', 'Schweiz',      'CHE' ],
  [ 'mt', 'Malta',        'MLT' ],
  
  [ 'kz', 'Kasachstan',   'KAZ' ],
  
  [ 'mx', 'Mexiko',        'MEX' ],
  [ 'us', 'United States', 'USA' ]
]


Country.create_from_ary!( countries )


Prop.create!( key: 'db.countries.version', value: '1' )