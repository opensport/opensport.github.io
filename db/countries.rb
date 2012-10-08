# encoding: utf-8

## NB: for keys use internet two letter code
## what to do for england (uk - use en?)

countries = [
  [ 'de', 'Deutschland',  'GER' ],
  [ 'at', 'Österreich',   'AUT' ],
  [ 'es', 'Spanien',      'ESP' ],
  [ 'fr', 'Frankreich',   'FRA' ],
  [ 'en', 'England',      'ENG' ],

## todo: add more countries, cleanup keys

  [ 'pol', 'Polen',        'POL' ],
  [ 'gre', 'Griechenland', 'GRE' ],
  [ 'rus', 'Russland',     'RUS' ],
  [ 'cze', 'Tschechien',   'CZE' ],
  [ 'ned', 'Niederlande',  'NED' ],
  [ 'den', 'Dänemark',     'DEN' ],
  [ 'por', 'Portugal',     'POR' ],
  [ 'ita', 'Italien',      'ITA' ],
  [ 'irl', 'Irland',       'IRL' ],
  [ 'cro', 'Kroatien',     'CRO' ],
  [ 'ukr', 'Ukraine',      'UKR' ],
  [ 'swe', 'Schweden',     'SWE' ],
  [ 'fro', 'Färöer',       'FRO' ],
  [ 'kaz', 'Kasachstan',   'KAZ' ]
]


Country.create_from_ary!( countries )


Prop.create!( :key => 'db.countries.version', :value => '1' )