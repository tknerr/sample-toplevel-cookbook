source 'https://rubygems.org'

gem 'chef', '12.3.0.rc.0', git: 'https://github.com/tknerr/chef.git', ref: 'fix-knife-on-windows'
gem 'berkshelf', '3.2.3'
gem 'stove', '3.2.6'

group :test do
  gem 'foodcritic', '4.0.0'
  gem 'rubocop', '0.30.1'
  gem 'chefspec', '4.2.0', git: 'https://github.com/tknerr/chefspec.git', ref: 'patch-1'
end

group :integration do
  gem 'vagrant-wrapper', '2.0.2'
  gem 'test-kitchen', '1.4.0.rc.1'
  gem 'kitchen-docker', '2.1.0'
  gem 'kitchen-vagrant', '0.17.0.rc.1'
  gem 'serverspec', '2.14.0'
end
