source 'https://rubygems.org'

ruby '1.9.3'

gem 'chef', '11.6.0'
gem 'foodcritic', '3.0.1'
gem 'tailor', '1.2.1'
gem 'chefspec', '2.0.1'
gem 'berkshelf', '2.0.10'

# need these on windows only
if RUBY_PLATFORM =~ /mswin|mingw/
  gem 'ruby-wmi', '0.4.0'
  gem 'win32-service', '0.7.2'
end

# fix dependency conflict
gem 'json', '1.7.7'