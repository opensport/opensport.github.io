# encoding: utf-8

###
## Premier League
# more info -> http://premierleague.com (official site)
#              http://en.wikipedia.org/wiki/Premier_League



pl = Event.create!( key:      'en.2012/13',
                    title:    'Premier League 2012/13',
                    start_at: Time.utc('2012-08-18 12:00') )

chelsea     = Team.find_by_key!( 'chelsea' )
manunited   = Team.find_by_key!( 'manunited' )
mancity     = Team.find_by_key!( 'mancity' )
everton     = Team.find_by_key!( 'everton' )
tottenham   = Team.find_by_key!( 'tottenham' )
westbrom    = Team.find_by_key!( 'westbrom' )
arsenal     = Team.find_by_key!( 'arsenal' )
westham     = Team.find_by_key!( 'westham' )
fulham      = Team.find_by_key!( 'fulham' )
newcastle   = Team.find_by_key!( 'newcastle' )
swansea     = Team.find_by_key!( 'swansea' )
stoke       = Team.find_by_key!( 'stoke' )
sunderland  = Team.find_by_key!( 'sunderland' )
liverpool   = Team.find_by_key!( 'liverpool' )
wigan       = Team.find_by_key!( 'wigan' )
astonvilla  = Team.find_by_key!( 'astonvilla' )
southampton = Team.find_by_key!( 'southampton' )
reading     = Team.find_by_key!( 'reading' )
norwich     = Team.find_by_key!( 'norwich' )
qpr         = Team.find_by_key!( 'qpr' )


pl.teams << chelsea
pl.teams << manunited
pl.teams << mancity
pl.teams << everton
pl.teams << tottenham
pl.teams << westbrom
pl.teams << arsenal
pl.teams << westham
pl.teams << fulham
pl.teams << newcastle
pl.teams << swansea
pl.teams << stoke
pl.teams << sunderland
pl.teams << liverpool
pl.teams << wigan
pl.teams << astonvilla
pl.teams << southampton
pl.teams << reading
pl.teams << norwich
pl.teams << qpr

Prop.create!( key: 'db.en.pl.2012/13.version', value: '1' )
