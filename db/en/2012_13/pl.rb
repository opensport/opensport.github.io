# encoding: utf-8

###
# Premier League
#  - more info -> http://premierleague.com (official site)
#                 http://en.wikipedia.org/wiki/Premier_League



pl = Event.create!( key:      'en.2012/13',
                    title:    'Premier League 2012/13',
                    start_at: Time.utc('2012-08-18 12:00') )

team_keys_pl = [
  'chelsea',
  'manunited',
  'mancity',
  'everton',
  'tottenham',
  'westbrom',
  'arsenal',
  'westham',
  'fulham',
  'newcastle',
  'swansea',
  'stoke',
  'sunderland',
  'liverpool',
  'wigan',
  'astonvilla',
  'southampton',
  'reading',
  'norwich',
  'qpr']

pl.add_teams_from_ary!( team_keys_pl )


Prop.create!( key: 'db.en.pl.2012/13.version', value: '1' )
