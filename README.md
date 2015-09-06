
# README

[![Circle CI](https://circleci.com/gh/tknerr/sample-toplevel-cookbook/tree/master.svg?style=shield)](https://circleci.com/gh/tknerr/sample-toplevel-cookbook/tree/master)

This is a minimal "toplevel cookbook" example. A "toplevel cookbook" is the single [top-level cookbook](http://lists.opscode.com/sympa/arc/chef/2014-01/msg00419.html) which represents a node. It may depend on other "library" or "application" cookbooks.

Note: this cookbook was previously (until v0.1.2) named `sample-application-cookbook`, but since the term "application cookbook" is so much overloaded in the Chef community [I now call them "top-level cookbooks"](https://github.com/berkshelf/berkshelf/issues/535#issuecomment-40890497).

# Top-Level Application

In this case it's really nothing more than a templatable sample.html file served via apache.

It outputs the value of the `node['sample_app']['words_of_wisdom']` attribute to the `sample.html` file and optionally the items of the data bag named `yummy` (if any).

# Tooling

It's meant as an example [Chef](https://www.chef.io/chef/) cookbook and is also used for testing [Bill's Kitchen](https://github.com/tknerr/bills-kitchen) which bundles ChefDK, Vagrant and Docker for the Windows platform.

All development dependencies are declared in the [`Gemfile`](https://github.com/tknerr/sample-toplevel-cookbook/blob/master/Gemfile), which are mostly gems for cookbook testing, and we are testing on the following levels:

 * ruby codestyle & liniting via [rubocop](https://github.com/bbatsov/rubocop)
 * chef linting via [foodcritic](http://acrmp.github.io/foodcritic/)
 * unit tests via [chefspec](https://github.com/acrmp/chefspec) (using [implicit receivers](http://stackoverflow.com/questions/12260534/using-implicit-subject-with-expect-in-rspec-2-11) for crisper syntax)
 * integration tests via [test-kitchen](https://github.com/opscode/test-kitchen) / [serverspec](http://serverspec.org/)


# Usage

## Running Unit and Integration Tests

* run `bundle install` to install the required gems from `Gemfile`
* run `rake -T` to see the available rake tasks for testing this cookbook
* run `rake test` to run all unit-level tests, including syntax, foodcritic, codestyle and chefspec
* run `rake integration` to run integration tests via test-kitchen / serverspec

## Interacting with the Application using Test-Kitchen

* run `bundle exec kitchen converge` to bring up the sample-app in a local VM
* visit http://localhost:8080/sample.html to check whether our sample app is deployed
* change the `:words_of_wisdom` attribute in .kitchen.yml, provision via `bundle exec kitchen converge` and check the sample app again
* run `bundle exec kitchen destroy` to terminate and delete the VM
