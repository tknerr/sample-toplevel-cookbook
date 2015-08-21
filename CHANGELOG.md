
# 0.3.0 (unreleased)

* test / toolchain updates:
  * Update to Chef 12.4.1
  * Update gem dependencies to their latest version

# 0.2.2 (April 15, 2015)

* cleanup:
  * remove workaround for CHEF-4753 from default recipe which was relevant for older Chef Solo version only
* test / toolchain updates:
  * Use i386 baseboxes so tests can be run on 32-bit hosts as well
  * Update to Chef 12.3.0.rc.0
  * Update to stove 3.2.1
  * Replace tailor with rubocop for ruby codestyle + linting
  * Remove `knife cookbook test` syntax check
  * Add docker based test-kitchen tests on CircleCI
  * Use 192.168.x.x network in Vagrantfile

# 0.2.0 (July 15, 2014)

* Rename cookbook to "sample-toplevel-cookbook"
* Update to latest cookbooks in metadata
  * apache 1.10.4
  * apt 2.4.0
* test / toolchain updates:
  * Update to Ruby 2.0 / Berkshelf 3
  * Update to latest gems for cookbook testing
  * Update to Chef 11.12.8 in test-kitchen and Vagrantfile
  * Switch to 10.x.x.x network in Vagrantfile

# 0.1.4 (unreleased)

* Add data bag example

# 0.1.2 (Oct 5, 2013)

* Output chef environment in `sample.html`
* Update cookbook versions
 * apache 1.7.0
 * apt 2.2.0

# 0.1.0 (Oct 5, 2013)

* Initial version
