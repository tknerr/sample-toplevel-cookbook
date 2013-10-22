
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
  sh "rspec -fd --color -I test/chefspec test/chefspec"
end

desc "run test-kitchen integration tests"
task :integration do
  sh "kitchen test --log-level info"
end

desc "run all unit-level tests"
task :test => [:syntax, :foodcritic, :codestyle, :spec]

desc "release the cookbook (metadata, tag, push)"
task :release do
  print "enter release version number [x.y.z]: "
  if (version = STDIN.gets.chomp).match /\d+\.\d+\.\d+/
    sh "bake #{version} --no-jira --no-github --no-changelog --no-upload --devodd -l info"
  else
    fail "bad version number format"
  end
end