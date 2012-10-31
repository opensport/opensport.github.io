# encoding: utf-8


## fix: change time zone to ??
## - All times listed are South African Standard Time (UTC+02)  ???

##################################
##  World Cup 2010 South Africa
#
#   more info -> http://de.wikipedia.org/wiki/Fußball-Weltmeisterschaft_2010

### 32 teams
##  64 games
##  31 days (11 June - 11 July)

wm = Event.create!( key:     'wm.2010',
                    title:   'World Cup 2012',
                    start_at: Time.cet( '2010-06-11 12:00' ))

##############
# 13 aus Europa

wm.add_teams_from_ary!([
 'den', # Dänemark
 'ger', # Deutschland
 'eng', # England
 'fra', # Frankreich
 'gre', # Griechenland
 'ita', # Italien
 'ned', # Niederlande
 'por', # Portugal
 'esp', # Spanien
 'sui', # Schweiz
 'srb', # Serbien
 'svk', # Slowakei
 'svn'  # Slowenien
])

####
# 5 aus Südamerika

wm.add_teams_from_ary!([
 'arg',  # Argentinien
 'bra',  # Brasilien
 'chi',  # Chile
 'par',  # Paraguay
 'uru'   # Uruguay
])


###
# 3 Nord- und Mittelamerika

wm.add_teams_from_ary!([
  'mex', # Mexiko
  'usa', # Vereinigte Staaten
  'hon'  # Honduras
])


####
# 6 aus Afrika

wm.add_teams_from_ary!([
  'alg', # Algerien
  'civ', # Elfenbeinküste
  'gha', # Ghana
  'cmr', # Kamerun
  'nga', # Nigeria
  'rsa'  # Südafrika
])


##########
# 4 aus Asien (mit Australien)

wm.add_teams_from_ary!([
  'aus',  # Australien
  'jpn',  # Japan
  'prk',  # Nordkorea
  'kor'  # Südkorea
])


##########
# 1 aus Ozeanien

wm.add_teams_from_ary!([
  'nzl'  # Neuseeland
])



##################
#### Groups

wma = Group.create!( event: wm, pos: 1, title: 'Gruppe A' )
wmb = Group.create!( event: wm, pos: 2, title: 'Gruppe B' )
wmc = Group.create!( event: wm, pos: 3, title: 'Gruppe C' )
wmd = Group.create!( event: wm, pos: 4, title: 'Gruppe D' )
wme = Group.create!( event: wm, pos: 5, title: 'Gruppe E' )
wmf = Group.create!( event: wm, pos: 6, title: 'Gruppe F' )
wmg = Group.create!( event: wm, pos: 7, title: 'Gruppe G' )
wmh = Group.create!( event: wm, pos: 8, title: 'Gruppe H' )

###############
# Gruppe A
#
#   Südafrika
#   Mexiko
#   Uruguay
#   Frankreich

wma.add_teams_from_ary!( ['rsa', 'mex', 'url', 'fra' ] )

###############
# Gruppe B
#
#   Argentinien
#   Nigeria
#   Südkorea
#   Griechenland

wmb.add_teams_from_ary!( ['arg', 'nga', 'kor', 'gre'] )

#############
# Gruppe C
#
#   England
#   Vereinigte Staaten
#   Algerien
#   Slowenien

wmc.add_teams_from_ary!( ['eng', 'usa', 'alg', 'svn'] )

#############
# Gruppe D
#
#   Deutschland
#   Australien
#   Serbien
#   Ghana

wmd.add_teams_from_ary!( ['ger', 'aus', 'srb', 'gha' ] )

################
# Gruppe E
#
#   Niederlande
#   Dänemark
#   Japan
#   Kamerun

wme.add_teams_from_ary!( ['ned', 'den', 'jpn', 'cmr'] )

################3
# Gruppe F
#
#   Italien
#   Paraguay
#   Neuseeland
#   Slowakei

wmf.add_teams_from_ary!( ['ita', 'par', 'nzl', 'svk'] )

#################
# Gruppe G
#
#   Brasilien
#   Nordkorea
#   Elfenbeinküste
#   Portugal

wmg.add_teams_from_ary!( ['bra', 'prk', 'civ', 'por'] )

#################
# Gruppe H
#
#   Spanien
#   Schweiz
#   Honduras
#   Chile

wmh.add_teams_from_ary!( ['esp', 'sui', 'hon', 'chi'] )


Prop.create!( key: 'db.world.2010.version', value: '1' )
