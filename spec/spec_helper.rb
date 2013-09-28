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
def chef_run(args = {}, &block)
  chef_run = ChefSpec::ChefRunner.new(
    args.merge(cookbook_path: COOKBOOKS_DIR, log_level: :error)
  )
  chef_run.instance_eval(&block) if block_given?
  chef_run.converge described_recipe
end
