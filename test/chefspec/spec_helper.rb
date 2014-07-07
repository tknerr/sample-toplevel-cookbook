require 'chefspec'
require 'chefspec/berkshelf'

#
# global/default configuration
#
RSpec.configure do |config|
  config.log_level = :error
end

#
# shortcut for converging the `described_recipe`. you can pass 
# an optional block for setting node attributes.
#
def chef_run(args = {}, &block)
  chef_run = ChefSpec::Runner.new(args)
  chef_run.instance_eval(&block) if block_given?
  chef_run.converge described_recipe
end
