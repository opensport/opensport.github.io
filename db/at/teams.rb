# encoding: utf-8

### fix:
# rename wacker to innsbruck
#         neustadt to wrneustadt

bl = [
  [ 'salzburg',    'FC RB Salzburg|RB Salzburg|Red Bull Salzburg',     'RBS' ],
  [ 'rapid',       'SK Rapid Wien|Rapid Wien',           'RAP' ],
  [ 'admira',      'FC Admira Wacker|Admira Wacker|FC Admira Wacker Mödling',   'ADM' ],
  [ 'austria',     'FK Austria Wien|Austria Wien',       'FAK' ],
  [ 'sturm',       'SK Sturm Graz|Sturm Graz',           'STU' ],
  [ 'ried',        'SV Ried|SV Josko Ried|SV Josko Fenster Ried',      'RIE' ],
  [ 'wacker',      'FC Wacker Innsbruck|FC Wacker|Wacker Innsbruck',    'IBK' ],
  [ 'mattersburg', 'SV Mattersburg',                     'SVM' ],
  [ 'neustadt',    'SC Wiener Neustadt|Wiener Neustadt', 'WRN' ],
  [ 'wac',         'Wolfsberger AC',                     'WAC' ]
]

ersteliga = [
  [ 'ksv',       'Kapfenberger SV 1919', 'Erste Liga/Stmk.', 'KSV' ],
  [ 'altach',    'SCR Altach',           'Erste Liga/Vbg.',  'ALT' ],
  [ 'austrial',  'SC Austria Lustenau',  'Erste Liga/Vbg.',  'LUS' ],
  [ 'stpoelten', 'SKN St. Pölten',       'Erste Liga/NÖ',    'POE' ],
  [ 'linz',      'FC Blau-Weiß Linz',    'Erste Liga/OÖ',    'BWL' ],
  [ 'groedig',   'SV Grödig',            'Erste Liga/Sbg.',  'GRO' ],
  [ 'lustenau',  'FC Lustenau 1907|FC Lustenau',     'Erste Liga/Vbg.',  'LUS' ],
  [ 'vienna',    'Vienna FC 1894',       'Erste Liga/Wien',  'VIE' ],
  [ 'hartberg',  'TSV Hartberg',         'Erste Liga/Stmk.', 'HAR' ],
  [ 'horn',      'SV Horn',              'Erste Liga/NÖ',    'HOR' ]
]

rlwest = [
  [ 'hard',     'FC Hard',               'Regionalliga West/Vbg.',  'HAR' ],
  [ 'bregenz',  'SC Bregenz',            'Regionalliga West/Vbg.',  'BRE' ],
  [ 'dornbirn', 'FC Dornbirn 1913',      'Regionalliga West/Vbg.',  'DOR' ],
  [ 'kufstein', 'FC Kufstein',           'Regionalliga West/Tirol', 'KUF' ],
  [ 'wattens',  'WSG Wattens',           'Regionalliga West/Tirol', 'WAT' ],
  [ 'austrias', 'SV Austria Salzburg',   'Regionalliga West/Sbg.',  'AUS' ],
  [ 'pinzgau',  'FC Pinzgau Saalfelden', 'Regionalliga West/Sbg.',  'PIN' ],
  [ 'stjohann', 'TSV St. Johann',        'Regionalliga West/Sbg.',  'STJ' ]
]


rlmitte = [
  [ 'vsv' ,          'Villacher SV',           'Regionalliga Mitte/Ktn.', 'VSV' ],
  [ 'klagenfurt',    'SAK Celovec/Klagenfurt', 'Regionalliga Mitte/Ktn.', 'CEL' ],
  [ 'austriak',      'SK Austria Klagenfurt',  'Regionalliga Mitte/Ktn.', 'KLA' ],
  [ 'kalsdorf',      'SC Kalsdorf',            'Regionalliga Mitte/Stmk.', 'KAL' ],
  [ 'gratkorn',      'FC Gratkorn',            'Regionalliga Mitte/Stmk.', 'GRA' ],
  [ 'allerheiligen', 'SV Allerheiligen',       'Regionalliga Mitte/Stmk.', 'ALL' ],
  [ 'leoben',        'DSV Leoben',             'Regionalliga Mitte/Stmk.', 'LEO' ],
  [ 'gak',           'Grazer AK',              'Regionalliga Mitte/Stmk.', 'GAK' ],
  [ 'pasching',      'FC Pasching',            'Regionalliga Mitte/OÖ',   'PAS' ],
  [ 'voecklamarkt',  'Vöcklamarkt',            'Regionalliga Mitte/OÖ',  'VOE'  ],
  [ 'stflorian',     'St. Florian',            'Regionalliga Mitte/OÖ',  'STF'  ],
  [ 'wallern',       'Wallern',                'Regionalliga Mitte/OÖ',  'WAL'  ],
  [ 'lask',          'LASK Linz',              'Regionalliga Mitte/OÖ',  'LAS'  ]
]

rlost = [
  [ 'sollenau',    '1. SC Sollenau',       'Regionalliga Ost/OÖ',    'SOL' ],
  [ 'amstetten',   'SKU Amstetten',        'Regionalliga Ost/NÖ',    'AMS' ],
  [ 'retz',        'SV Retz',              'Regionalliga Ost/NÖ',    'RET' ],
  [ 'fac' ,        'FAC Team für Wien',    'Regionalliga Ost/Wien',  'FAC' ],
  [ 'schwechat',   'SV Schwechat',         'Regionalliga Ost/Wien',  'SCH' ],
  [ 'wienersk',    'Wiener SK',            'Regionalliga Ost/Wien',  'WIE' ],
  [ 'ostbahn',     'SC Ostbahn XI',        'Regionalliga Ost/Wien',  'OST' ],
  [ 'oberwart',    'SV Oberwart',          'Regionalliga Ost/Bgld.', 'OBE' ],
  [ 'parndorf',    'SC/ESV Parndorf 1919', 'Regionalliga Ost/Bgld.', 'PAR' ],
  [ 'stegersbach', 'SV Stegersbach',       'Regionalliga Ost/Bgld.', 'STE' ]
]

misc = [
  [ 'wolfurt',       'FC Wolfurt',            'Vorarlberg Liga',  'WOL' ],
  [ 'schwaz',        'SC Schwaz',             'Tirol Liga',       'SCH' ],
  [ 'reutte',        'SV Reutte',             'Tirol Liga',       'REU' ],
  [ 'spittal',       'SV Spittal/Drau',       'Kärntner Liga',    'SPI' ],
  [ 'sak',           'SAK 1914',              'Salzburger Liga',  'SAK' ],
  [ 'dsc',           'Deutschlandsberger SC', 'Landesliga/Stmk.', 'DSC' ],
  [ 'micheldorf',    'SV Micheldorf',         'OÖ Liga',          'MIC' ],
  [ 'badvoeslau',    'ASK Bad Vöslau',        'Landesliga/NÖ',    'VOE' ],
  [ 'gaflenz',       'SV Gaflenz',            'Landesliga/NÖ',    'GAF' ],
  [ 'ardagger',      'Ardagger SCU',          'Landesliga/NÖ',    'ARD' ],
  [ 'rohrendorf',    'SC Rohrendorf',         '2. Landesliga West/NÖ', 'ROH' ],
  [ 'heiligenkreuz', 'SV Heiligenkreuz',      '2. Liga Süd/NÖ',   'HEI' ],
  [ 'viktoria',      'Wiener Viktoria',       'Wiener Stadtliga', 'VIK' ],
  [ 'juniors',       'FC RB Juniors Salzburg' ]
]

at = Country.find_by_key!( 'at' )

Team.create_from_ary!( bl+ersteliga+rlwest+rlmitte+rlost+misc, club: true, country: at )

Prop.create!( key: 'db.at.teams.version', value: '1' )
