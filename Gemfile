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
  #gem 'vagrant-wrapper', '2.0.1'
  gem 'test-kitchen', '1.2.1'
  gem 'kitchen-vagrant', '0.15.0',
    :git => 'https://github.com/test-kitchen/kitchen-vagrant.git',
    :ref => '24811d164e2757c51f3181062a5859e7335ed5c9'
  gem 'serverspec', '2.3.1'
end