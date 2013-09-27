COOKBOOKS_DIR = '.cookbooks'

require 'chefspec'
require 'berkshelf'

# install cookbooks when rspec runs
berksfile = Berkshelf::Berksfile.from_file('Berksfile')
berksfile.install(path: COOKBOOKS_DIR)

#
# shortcut for converging the `described_recipe`. you can pass 
# an optional block for setting node attributes.
#
def chef_run(&block)
  chef_run = ChefSpec::ChefRunner.new(cookbook_path: COOKBOOKS_DIR)
  chef_run.instance_eval(&block) if block_given?
  chef_run.converge described_recipe
end
