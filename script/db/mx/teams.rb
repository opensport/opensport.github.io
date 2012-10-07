# encoding: utf-8

teams = [
 [ 'america',   'Club América',        'México' ],
 [ 'atlante',   'Atlante',             'Cancún' ],
 [ 'atlas',     'Atlas',               'Guadalajara' ],
 [ 'chivas',    'Guadalajara Chivas',  'Guadalajara' ],
 [ 'cruzazul',  'Cruz Azul',           'México' ],
 [ 'jaguares',  'Jaguares de Chiapas', 'Tuxtla Gutiérrez' ],
 [ 'leon',      'Club León',           'León' ],
 [ 'monarcas',  'Monarcas Morelia',    'Morelia' ],
 [ 'monterrey', 'Monterrey',           'Monterrey' ],
 [ 'pachuca',   'Pachuca',             'Pachuca' ],
 [ 'puebla',    'Puebla F.C. ',        'Puebla' ],
 [ 'queretaro', 'Querétaro F.C.',      'Querétaro' ],
 [ 'sanluis',   'Club  San Luis',      'San Luis Potosì' ],
 [ 'slaguna',   'Santos Laguna',       'Torreón' ],
 [ 'tijuana',   'Club Tijuana',        'Tijuana' ],
 [ 'toluca',    'Toluca',              'Toluca' ],
 [ 'tigres',    'Tigres UANL',         'San Nicolás de los Garza' ],
 [ 'pumas',     'Pumas UNAM',          'México'  ]
]

Team.create_from_ary!( teams )

Prop.create!( :key => 'db.mx.teams.version', :value => '1' )