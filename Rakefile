
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
  sh "kitchen test --log-level debug"
end

desc "run all unit-level tests"
task :test => [:syntax, :foodcritic, :codestyle, :spec]

desc "release the cookbook (metadata, tag, push)"
task :release do
  print "This will create and push a tag with the version from `metadata.rb`. Continue? [y/n] "
  if (STDIN.gets.chomp).match /^[yY][eE]?[sS]?$/
    sh "stove --log-level info"
  else
    puts "release aborted"
  end
end