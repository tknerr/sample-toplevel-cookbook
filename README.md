
# README

[![Build Status](https://travis-ci.org/tknerr/sample-application-cookbook.png?branch=master)](https://travis-ci.org/tknerr/sample-application-cookbook)

This is a minimal "application cookbook" example which represents your application and depends on other "library cookbooks".

It's really nothing more than a templatable sample.html file served via apache. 


# TOOLING

It uses the following vagrant plugins (managed on a per-project level via [bindler](https://github.com/fgrehm/bindler)):

 * [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus) for installing Chef
 * [vagrant-berkshelf](https://github.com/riotgames/vagrant-berkshelf) for resolving the cookbook dependencies
 * [vagrant-cachier](https://github.com/fgrehm/vagrant-cachier) for transparent caching of all kinds of packages / downloads

It adds testing on the following levels:

 * cookbook syntax check via `knife cookbook test`
 * linting via [foodcritic](http://acrmp.github.io/foodcritic/)
 * codestyle check via [tailor](https://github.com/turboladen/tailor)
 * unit tests via [chefspec](https://github.com/acrmp/chefspec) (using [implicit receivers](http://stackoverflow.com/questions/12260534/using-implicit-subject-with-expect-in-rspec-2-11) for crisper syntax)
 * integration tests via [test-kitchen](https://github.com/opscode/test-kitchen) / [serverspec](http://serverspec.org/)


# USAGE

## Running Unit and Integration Tests

* run `bundle install` to install the required gems from `Gemfile`
* run `rake -T` to see the available rake tasks for testing this cookbook
* run `rake test` to run all unit-level tests, including syntax, foodcritic, codestyle and chefspec
* run `rake integration` to run integration tests via test-kitchen / serverspec

## Running the Application in a Vagrant VM

* run `vagrant plugin bundle` to install the vagrant plugins as defined in `plugins.json`
* run `vagrant up sample-app` to bring up the sample-app in a local virtualbox VM
* visit http://33.33.40.15/sample.html to check whether our sample app is deployed
* change the `:words_of_wisdom` in Vagrantfile, provision via `vagrant provision sample-app` and check the sample app again
* run `vagrant destroy sample-app` to terminate and delete the VM