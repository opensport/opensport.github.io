# encoding: utf-8

teams = [
  [ 'pol', 'Polen',        'POL' ],
  [ 'gre', 'Griechenland', 'GRE' ],
  [ 'rus', 'Russland',     'RUS' ],
  [ 'cze', 'Tschechien',   'CZE' ],
  [ 'ned', 'Niederlande',  'NED' ],
  [ 'den', 'Dänemark',     'DEN' ],
  [ 'ger', 'Deutschland',  'GER' ],
  [ 'por', 'Portugal',     'POR' ],
  [ 'esp', 'Spanien',      'ESP' ],
  [ 'ita', 'Italien',      'ITA' ],
  [ 'irl', 'Irland',       'IRL' ],
  [ 'cro', 'Kroatien',     'CRO' ],
  [ 'ukr', 'Ukraine',      'UKR' ],
  [ 'swe', 'Schweden',     'SWE' ],
  [ 'fra', 'Frankreich',   'FRA' ],
  [ 'eng', 'England',      'ENG' ],
  [ 'fro', 'Färöer',       'FRO' ],
  [ 'kaz', 'Kasachstan',   'KAZ' ],
  [ 'aut', 'Österreich',   'AUT' ]
]



Team.create_from_ary!( teams )


Prop.create!( :key => 'db.euro.teams.version', :value => '1' )
