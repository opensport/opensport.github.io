# encoding: utf-8

ar = Country.find_by_key!( 'ar' )
br = Country.find_by_key!( 'br' )
cl = Country.find_by_key!( 'cl' )
py = Country.find_by_key!( 'py' )
uy = Country.find_by_key!( 'uy' )
ec = Country.find_by_key!( 'ec' )
co = Country.find_by_key!( 'co' )

teams = [
 ['tigre',         'Club Atlético Tigre|CA Tigre|Tigre', ar ],
 ['colon',         'CA Colón|Club Atlético Colón (Santa Fe)', ar],
 ['independiente', 'Independiente|CA Independiente de Avellaneda', ar],

 ['saopaulo',   'São Paulo FC|São Paulo|Sao Paulo|FC Sao Paulo', br ],
 ['gremio',     'Grêmio Porto Alegre|Grêmio|Gremio Porto Alegre', br ],
 ['palmeiras',  'SE Palmeiras São Paulo|SE Palmeiras|Palmeiras', br],
 ['atleticogo', 'Atlético Goianiense|Atlético GO', br],

 ['udechile', 'Universidad de Chile|U. de Chile|Club Universidad de Chile', cl ],
 ['cduc',     'Universidad Católica|CDUC|CD Universidad Católica', cl],

 ['millonarios', 'Millonarios Bogotá|Millonarios', co ],

 ['quito',       'Deportivo Quito|Club Deportivo Quito', ec],
 ['emelec',      'CS Emelec|Emelec', ec],
 ['loja',        'LDU Loja|LDU de Loja', ec],
 ['barcelonasc', 'Barcelona SC Guayaquil|Barcelona SC', ec],

 ['liverpoolfc', 'Liverpool FC Montevideo|Liverpool FC|Liverpool Fútbol Club', uy],

 ['porteno',  'Cerro Porteño|Club Cerro Porteño', py ],
]



Team.create_from_ary!( teams, club: true )

Prop.create!( key: 'db.copa.teams.version', value: '1' )
