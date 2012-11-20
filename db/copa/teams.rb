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
 ['bocajuniors',   'Club Atlético Boca Juniors|Boca Juniors', ar],
 ['velez',         'Club Atlético Vélez Sarsfield|CA Vélez', ar],

 ['saopaulo',   'São Paulo FC|São Paulo|FC São Paulo|São Paulo SP', br],
 ['gremio',     'Grêmio Porto Alegre|Grêmio|Grêmio RS', br],
 ['palmeiras',  'SE Palmeiras São Paulo|SE Palmeiras|Palmeiras|Palmeiras SP', br],
 ['atleticogo',  'Atlético Goianiense|Atlético GO', br],
 ['corinthians', 'Corinthians São Paulo|Corinthians|Corinthians SP', br],
 ['santos',        'FC Santos|Santos|Santos SP', br],
 ['internacional', 'Internacional Porto Alegre|Internacional|Internacional RS', br],
 ['fluminense',    'Fluminense Rio de Janeiro|Fluminense|Fluminense RJ', br],
 ['flamengo', 'Flamengo Rio de Janeiro|Flamengo|Flamengo RJ', br],
 ['vascodegama', 'Vasco da Gama Rio de Janeiro|Vasco|Vasco Da Gama RJ', br],

 ['udechile', 'Universidad de Chile|U. de Chile|Club Universidad de Chile', cl],
 ['cduc',     'Universidad Católica|CDUC|CD Universidad Católica', cl],

 ['millonarios', 'Millonarios Bogotá|Millonarios|Millonarios FC', co],
 ['atleticonacional', 'Atlético Nacional', co],

 ['quito',       'Deportivo Quito|Club Deportivo Quito', ec],
 ['emelec',      'CS Emelec|Emelec|Club Sport Emelec', ec],
 ['loja',        'LDU Loja|LDU de Loja|Liga de Loja', ec],
 ['barcelonasc', 'Barcelona SC Guayaquil|Barcelona SC|Barcelona Guayaquil', ec],

 ['liverpoolfc', 'Liverpool FC Montevideo|Liverpool FC|Liverpool Fútbol Club|Liverpool Montevideo', uy],

 ['porteno',  'Cerro Porteño|Club Cerro Porteño', py],
 ['libertad', 'Club Libertad Asunción|Libertad|Libertad Ascunción', py],
]



Team.create_from_ary!( teams, club: true )

## The End
#################