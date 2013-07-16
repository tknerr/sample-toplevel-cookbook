
README
======

This is a sample "application cookbook" which represents your application and depends on other "library cookbooks".

It's really nothing more than a templatable sample.html file served via apache. 


USAGE
=====

* run `vagrant plugin bundle` to install the vagrant plugins as defined in `plugins.json`
* run `vagrant up sample-app` to bring up the sample-app in a local virtualbox VM
* visit http://33.33.40.15/sample.html to check whether our sample app is deployed
* change the `:words_of_wisdom` in Vagrantfile, provision via `vagrant provision sample-app` and check the sample app again
* run `vagrant destroy sample-app` to terminate and delete the VM