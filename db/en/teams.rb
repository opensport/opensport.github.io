# encoding: utf-8

## fix/todo:
##  chelsea, mancity, etc. already defined in cl
##  change create to create_or_update or similar (check for name convention in Rails?)


teams = [
  [ 'chelsea', 'Chelsea' ],
   ## todo/fix: add all missing teams
   ##  [ ]
]


en = Country.find_by_key!( 'en' )

Team.create_clubs_from_ary_for_country!( teams, en )


Prop.create!( :key => 'db.en.teams.version', :value => '1' )