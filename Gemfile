source 'https://rubygems.org'

ruby '1.9.3'

gem 'chef', '11.6.2'
gem 'berkshelf', '2.0.10'

# fix dependency conflict
gem 'json', '1.7.7'

group :test do
  gem 'foodcritic', '3.0.1'
  gem 'tailor', '1.2.1'
  gem 'chefspec', '3.0.0.beta.4'
end

group :integration do
  gem 'test-kitchen', '1.0.0.beta.3'
  gem 'kitchen-vagrant', '0.11.1'
  gem 'serverspec', '0.9.6'
end