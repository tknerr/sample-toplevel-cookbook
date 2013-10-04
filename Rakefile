
CURRENT_DIR=File.basename(Dir.getwd)

require 'bundler/setup'

desc "run syntax check"
task :syntax do
  sh "knife cookbook test #{CURRENT_DIR} -o .."
end

desc "run foodcritic lint checks"
task :foodcritic do
  sh "foodcritic -f any ."
end

desc "check code style with tailor"
task :codestyle do
  sh "tailor"
end

desc "run chefspec examples"
task :spec do
  sh "rspec -fd --color"
end

desc "run test-kitchen integration tests"
task :integration do
  sh "kitchen test --log-level info"
end


desc "run all unit-level tests"
task :test => [:syntax, :foodcritic, :codestyle, :spec]

