source 'https://rubygems.org'

ruby '2.0.0'

gem 'chef', '11.14.0.rc.2',
  git: "https://github.com/opscode/chef.git", ref: "11.14.0.rc.2"
gem 'berkshelf', '3.1.3'
#gem 'berkshelf', '2.0.10'

# Gnah - https://github.com/sethvargo/stove/issues/30
#gem 'stove', '2.0.0.beta.2'
#  git: "https://github.com/tknerr/stove.git", ref: "fix-single-quotes"

# fix dependency conflict
#gem 'json', '1.7.7'

# faraday 0.9 breaks berkshelf
#gem 'faraday', '0.8.9'

# add missing chef deps for windows:
# see https://github.com/opscode/mixlib-shellout/issues/50
#platforms :x64_mingw do
#  gem 'win32-process', '0.7.4'
#  gem 'windows-pr', '1.2.3'
#  gem 'ruby-wmi', '0.4.0'
#  gem 'win32-service', '0.8.4'
#end

group :test do
  gem 'foodcritic', '4.0.0'
  gem 'tailor', '1.4.0'
  gem 'chefspec', '4.0.1'
end

group :integration do
  gem 'test-kitchen', '1.2.1'
  gem 'kitchen-vagrant', '0.15.0'
  gem 'serverspec', '2.0.0.beta6'
end