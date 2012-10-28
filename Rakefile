
### Build a new sport.db
##  Update all fixtures


DB_ROOT="./db"

task :default => 'release'


task :import => [:setup] do
  ## import into db
  ## sh "echo 'Hello fixtures'"
  
  puts "working directory: #{Dir.pwd}"
  
  sh "sportdb --include #{DB_ROOT} -e at.2011/12 at/2011_12/bl"
  sh "sportdb --include #{DB_ROOT} -e at_bl_2012_13 at/2012_13/bl"
  sh "sportdb --include #{DB_ROOT} -e at_cup_2012_13 at/2012_13/cup"
  
  sh "sportdb --include #{DB_ROOT} -e de.2012/13 de/2012_13/bl"
  
  sh "sportdb --include #{DB_ROOT} -e en.2012/13 en/2012_13/pl"

  sh "sportdb --include #{DB_ROOT} -e wmq world/quali_2012_13_c"
  ### sh "sportdb --include #{DB_ROOT} -e wmq world/quali_2012_13_i"
end

## export from db/generate fixtures
### fix: use --output option

file "#{DB_ROOT}/at/2011_12/bl_fixtures.rb" => "#{DB_ROOT}/at/2011_12/bl.txt" do
  sh "sportdb --generate -e at.2011/12 #{DB_ROOT}/at/2011_12/bl_fixtures"
end

file "#{DB_ROOT}/at/2012_13/bl_fixtures.rb" => "#{DB_ROOT}/at/2012_13/bl.txt" do
  sh "sportdb --generate -e at_bl_2012_13 #{DB_ROOT}/at/2012_13/bl_fixtures"
end

file "#{DB_ROOT}/at/2012_13/cup_fixtures.rb" => "#{DB_ROOT}/at/2012_13/cup.txt" do
  sh "sportdb --generate -e at_cup_2012_13 #{DB_ROOT}/at/2012_13/cup_fixtures"
end

file "#{DB_ROOT}/de/2012_13/bl_fixtures.rb" => "#{DB_ROOT}/de/2012_13/bl.txt" do
  sh "sportdb --generate -e de.2012/13 #{DB_ROOT}/de/2012_13/bl_fixtures"
end

file "#{DB_ROOT}/en/2012_13/pl_fixtures.rb" => "#{DB_ROOT}/en/2012_13/pl.txt" do
  sh "sportdb --generate -e en.2012/13 #{DB_ROOT}/en/2012_13/pl_fixtures"
end

file "#{DB_ROOT}/world/quali_2012_13_fixtures.rb" => ["#{DB_ROOT}/world/quali_2012_13_c.txt",
                                                      "#{DB_ROOT}/world/quali_2012_13_i.txt"
                                                      ] do
  sh "sportdb --generate -e wmq #{DB_ROOT}/world/quali_2012_13_fixtures"
end


task :export => [:import,
                 "#{DB_ROOT}/at/2012_13/bl_fixtures.rb",
                 "#{DB_ROOT}/at/2011_12/bl_fixtures.rb",
                 "#{DB_ROOT}/at/2012_13/cup_fixtures.rb",
                 "#{DB_ROOT}/de/2012_13/bl_fixtures.rb",
                 "#{DB_ROOT}/en/2012_13/pl_fixtures.rb",
                 "#{DB_ROOT}/world/quali_2012_13_fixtures.rb"
                 ] do
  # nothing here
end


task :release => [:export] do
  puts "hello from release build script"
end

task :clean do
  puts "deleting sport.db..."
  rm "sport.db"
end

task :setup => :clean do
  puts "create new sport.db..."
  sh "sportdb --create"
  
  ['countries',
   'at/teams',
   'at/2011_12/bl',
   'at/2011_12/cup',
   'at/2012_13/bl',
   'at/2012_13/cup',
   'de/teams',
   'de/2012_13/bl',
   'en/teams',
   'en/2012_13/pl',
   'cl/teams',
   'cl/2011_12/cl',
   'cl/2011_12/el',
   'cl/2012_13/cl',
   'euro/teams',
   'euro/2012',
   'world/quali_2012_13',
   'world/quali_2012_13_c',
##  'world/quali_2012_13_i'
   ].each do |seed|
    sh "sportdb --include #{DB_ROOT} #{seed}"
  end
end
