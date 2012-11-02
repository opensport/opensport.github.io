# encoding: utf-8

teams = [
 [ 'america',   'Club América',        'city:mexico' ],
 [ 'atlante',   'Atlante',             'city:cancun' ],
 [ 'atlas',     'Atlas',               'city:guadalajara' ],
 [ 'chivas',    'Guadalajara Chivas',  'city:guadalajara' ],
 [ 'cruzazul',  'Cruz Azul',           'city:mexico' ],
 [ 'jaguares',  'Jaguares de Chiapas', 'city:tuxtla' ],
 [ 'leon',      'Club León',           'city:leon' ],
 [ 'monarcas',  'Monarcas Morelia',    'city:morelia' ],
 [ 'monterrey', 'Monterrey',           'city:monterrey' ],
 [ 'pachuca',   'Pachuca',             'city:pachuca' ],
 [ 'puebla',    'Puebla F.C. ',        'city:puebla' ],
 [ 'queretaro', 'Querétaro F.C.',      'city:queretaro' ],
 [ 'sanluis',   'Club  San Luis',      'city:sanluispotosi' ],
 [ 'slaguna',   'Santos Laguna',       'city:torreon' ],
 [ 'tijuana',   'Club Tijuana',        'city:tijuana' ],
 [ 'toluca',    'Toluca',              'city:toluca' ],
 [ 'tigres',    'Tigres UANL',         'city:sannicolas' ],
 [ 'pumas',     'Pumas UNAM',          'city:mexico' ]
]

mx = Country.find_by_key!( 'mx' )

Team.create_from_ary!( teams, club: true, country: mx )

Prop.create!( key: 'db.mx.teams.version', value: '1' )