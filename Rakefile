
### Build a new sport.db
##  Update all fixtures


DB_ROOT="./db"

task :default => 'release'

file "#{DB_ROOT}/at/2012_13/bl_fixtures.rb" => "#{DB_ROOT}/at/2012_13/bl.txt" do
  
  ## import into db
  sh "echo 'Hello fixtures'"
  
  puts "working directory: #{Dir.pwd}"
  
  sh "sportdb --include #{DB_ROOT} -e at_bl_2012_13 at/2012_13/bl"
  
  ## export from db/generate fixtures
  
  ### fix: use --output option
  sh "sportdb --generate -e at_bl_2012_13 #{DB_ROOT}/at/2012_13/bl_fixtures"
end

task :import => [:setup, "#{DB_ROOT}/at/2012_13/bl_fixtures.rb"] do
  
end

task :release => [:import] do
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
   'at/2012_13/cup'
   ].each do |seed|
    sh "sportdb --include #{DB_ROOT} #{seed}"
  end
end
