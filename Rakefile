
CURRENT_DIR=File.basename(Dir.getwd)

require 'bundler/setup'

desc "run syntax check"
task :syntax do
  sh "knife cookbook test #{CURRENT_DIR} -o .."
end

desc "run foodcritic checks"
task :foodcritic do
  sh "foodcritic -f any ."
end

desc "check code style"
task :codestyle do
  sh "tailor"
end


desc "run all tests"
task :test => [:syntax, :foodcritic, :codestyle]