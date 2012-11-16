# encoding: utf-8


## fix: change time zone to ??

##################################
##  Copa América 2011 (Argentina)
#
#   more info -> http://en.wikipedia.org/wiki/2011_Copa_América
#             -> http://de.wikipedia.org/wiki/Copa_América_2011

copa = Event.create!( key:     'america.2011',
                    title:   'Copa América 2011',
                    start_at: Time.cet( '2011-07-01 12:00' ),
                    league:  League.find_by_key!('america'),
                    season:  Season.find_by_key!('2011'))


##############
# 12 Teams

copa.add_teams_from_ary!([
 'arg',   # Argentien
 'col',   # Kolumbien
 'uru',   # Uruguay
 'bra',   # Brasilien
 'mex',   # Mexiko
 'ecu',   # Ecuador
 'chi',   # Chile
 'par',   # Paraguay
 'per',   # Peru
 'ven',   # Venezuela
 'bol',   # Bolvien
 'crc'    # Costa Rica
 ])


##################
#### Groups

copaa = Group.create!( event: copa, pos: 1, title: 'Gruppe A' )
copab = Group.create!( event: copa, pos: 2, title: 'Gruppe B' )
copac = Group.create!( event: copa, pos: 3, title: 'Gruppe C' )

copaa.add_teams_from_ary!( ['arg', 'col', 'bol', 'crc' ] )
copab.add_teams_from_ary!( ['bra', 'par', 'ven', 'ecu' ] )
copac.add_teams_from_ary!( ['uru', 'chi', 'per', 'mex' ] )


Prop.create!( key: 'db.america.2011.version', value: '1' )
