# encoding: utf-8

## NB: for keys use internet domain/iso two letter code 
#
# more info about iso country codes:
#  -> http://en.wikipedia.org/wiki/ISO_3166-1
#  two letter codes   -> http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
#  three letter codes -> http://en.wikipedia.org/wiki/ISO_3166-1_alpha-3


countries = [

  ####################
  ### europe 

  ## [ 'ad', 'Andorra',      'AND' ],
  ## [ 'al', 'Albanien',     'ALB' ],
  ## [ 'am', 'Armenien',     'ARM' ],
  [ 'at', 'Österreich',   'AUT' ],
  [ 'be', 'Belgien',      'BEL' ],
  ## [ 'bg', 'Bulgarien',  'BGR' ],
  [ 'by', 'Weißrussland', 'BLR' ],
  [ 'ch', 'Schweiz',      'SUI' ],  # NB: *** CHE is iso standard
  ## [ 'cy', 'Zypern',    'CYP' ],
  [ 'cz', 'Tschechien',   'CZE' ],
  [ 'de', 'Deutschland',  'GER' ],  # NB: *** DEU is iso standard
  [ 'dk', 'Dänemark',     'DEN' ],  # NB: *** DNK is iso standard  
  [ 'en', 'England',      'ENG' ],  # NB: not a valid iso country n internet domain / it's uk - what to use - anything better?
  [ 'es', 'Spanien',      'ESP' ],
  [ 'fi', 'Finnland',     'FIN' ],
  [ 'fo', 'Färöer',       'FRO' ],
  [ 'fr', 'Frankreich',   'FRA' ],
  [ 'ge', 'Georgien',     'GEO' ],
  [ 'gr', 'Griechenland', 'GRE' ],  # NB: *** GRC is iso standard
  [ 'hr', 'Kroatien',     'CRO' ],  # NB: *** HRV is iso standard;  local name: Hrvatska
  ## [ 'hu', 'Ungarn',       'HUN' ],
  [ 'ie', 'Irland',       'IRL' ],
  [ 'it', 'Italien',      'ITA' ],
  [ 'kz', 'Kasachstan',   'KAZ' ],
  [ 'mt', 'Malta',        'MLT' ],
  [ 'nl', 'Niederlande',  'NED' ],  # NB: *** NLD is iso standard
  [ 'pl', 'Polen',        'POL' ],
  [ 'pt', 'Portugal',     'POR' ],  # NB: *** PRT is iso standard
  [ 'ro', 'Rumänien',     'ROM' ],  # NB: *** ROU is iso standard
  [ 'ru', 'Russland',     'RUS' ],
  [ 'sc', 'Schottland',   'SCO' ],    # NB: not a valid iso country/internet domain - it's uk - what to use - anything better?
  [ 'se', 'Schweden',     'SWE' ],
  [ 'tr', 'Türkei',       'TUR' ],
  [ 'ua', 'Ukraine',      'UKR' ],
  
  #####################
  #### north/central/south america & caribbean islands
  
  ## [ 'ar', 'Argentinien',   'ARG' ],
  ## [ 'br', 'Brasilien',     'BRA' ],
  [ 'ca', 'Kanada',        'CAN' ],
  [ 'mx', 'Mexiko',        'MEX' ],
  [ 'us', 'United States', 'USA' ]
]


Country.create_from_ary!( countries )


Prop.create!( key: 'db.countries.version', value: '1' )