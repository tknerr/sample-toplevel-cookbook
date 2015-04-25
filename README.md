
# README

[![Circle CI](https://circleci.com/gh/tknerr/sample-toplevel-cookbook/tree/master.svg?style=shield)](https://circleci.com/gh/tknerr/sample-toplevel-cookbook/tree/master)

This is a minimal "toplevel cookbook" example. A "toplevel cookbook" is the single [top-level cookbook](http://lists.opscode.com/sympa/arc/chef/2014-01/msg00419.html) which represents a node. It may depend on other "library" or "application" cookbooks.

Note: this cookbook was previously (until v0.1.2) named `sample-application-cookbook`, but since the term "application cookbook" is so much overloaded in the Chef community [I now call them "top-level cookbooks"](https://github.com/berkshelf/berkshelf/issues/535#issuecomment-40890497).

# Top-Level Application

In this case it's really nothing more than a templatable sample.html file served via apache.

It outputs the value of the `node['sample_app']['words_of_wisdom']` attribute to the `sample.html` file and optionally the items of the data bag named `yummy` (if any).

# Tooling

It uses the following vagrant plugins:

 * [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus) for installing Chef
 * [vagrant-berkshelf](https://github.com/riotgames/vagrant-berkshelf) for resolving the cookbook dependencies

It adds testing on the following levels:

 * chef linting via [foodcritic](http://acrmp.github.io/foodcritic/)
 * ruby codestyle & liniting via [rubocop](https://github.com/bbatsov/rubocop)
 * unit tests via [chefspec](https://github.com/acrmp/chefspec) (using [implicit receivers](http://stackoverflow.com/questions/12260534/using-implicit-subject-with-expect-in-rspec-2-11) for crisper syntax)
 * integration tests via [test-kitchen](https://github.com/opscode/test-kitchen) / [serverspec](http://serverspec.org/)


# Usage

## Running Unit and Integration Tests

* run `bundle install` to install the required gems from `Gemfile`
* run `rake -T` to see the available rake tasks for testing this cookbook
* run `rake test` to run all unit-level tests, including syntax, foodcritic, codestyle and chefspec
* run `rake integration` to run integration tests via test-kitchen / serverspec

## Running the Application in a Vagrant VM

* run `vagrant up sample-app` to bring up the sample-app in a local virtualbox VM
* visit http://172.16.40.15/sample.html to check whether our sample app is deployed
* change the `:words_of_wisdom` in Vagrantfile, provision via `vagrant provision sample-app` and check the sample app again
* run `vagrant destroy sample-app` to terminate and delete the VM
