
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
  # weird things happen if vagrant is installed as a gem, see #5
  if `which vagrant`.include? "lib/ruby/gems/"
    puts <<-EOF
###
### WARNING
###
###   You have vagrant installed as a gem which breaks test-kitchen in a bundler environment :-(
###   See https://github.com/test-kitchen/kitchen-vagrant/issues/64
###
###   Will run `kitchen test` outside of the bundler environment, i.e. Gemfile has no effect! 
###
EOF
    Bundler.with_original_env do
      sh "kitchen test --log-level info"
    end
  else
      sh "kitchen test --log-level info"
  end
end

desc "run all unit-level tests"
task :test => [:syntax, :foodcritic, :codestyle, :spec]

desc "release the cookbook (metadata, tag, push)"
task :release do
  print "This will create and push a tag with the version from `metadata.rb`. Continue? [y/n] "
  if (STDIN.gets.chomp).match /[yY][eE][sS]/
    sh "stove -l info"
  else
    puts "release aborted"
  end
end