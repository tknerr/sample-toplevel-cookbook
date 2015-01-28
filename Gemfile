source 'https://rubygems.org'

gem 'chef', '11.16.4'
gem 'berkshelf', '3.2.2'
gem 'stove', '3.2.3'

group :test do
  gem 'foodcritic', '4.0.0'
  gem 'tailor', '1.4.1'
  gem 'chefspec', '4.1.1'
end

group :integration do
  gem 'vagrant-wrapper', '2.0.2'
  gem 'test-kitchen', '1.3.1'
  gem 'kitchen-docker', '1.7.0'
  gem 'kitchen-vagrant', '0.15.0',
    :git => 'https://github.com/tknerr/kitchen-vagrant.git',
    :ref => 'lxc-provider-support'
  gem 'serverspec', '2.3.1'
end