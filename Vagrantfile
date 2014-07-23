
Vagrant::configure("2") do |config|

  # enable cachier
  #config.cache.scope = :box
  # the Chef version to use
  config.omnibus.chef_version = "11.14.0.rc.2"
  # enable berkshelf plugin
  config.berkshelf.enabled = true
  
  #
  # define the sample-app VM
  #
  config.vm.define :"sample-app" do | sample_app_config |
    
    # configure the basebox
    sample_app_config.vm.box = "chef/ubuntu-12.04-i386"

    # configure host-only network
    sample_app_config.vm.hostname = "sample-app.local"
    sample_app_config.vm.network :private_network, ip: "192.168.40.15"

    # virtualbox-specific customizations
    sample_app_config.vm.provider :virtualbox do |vbox, override|
      vbox.customize ["modifyvm", :id, "--name", "sample-app.local"] 
    end
    
    # provisioning
    sample_app_config.vm.provision :chef_solo do |chef|
      chef.add_recipe "sample-app"
      chef.data_bags_path = "./test/integration/data_bags"
      chef.json = {
        :sample_app => {
          :words_of_wisdom => "Chuck Norris' beard can type 140 wpm!"
        }
      }
      chef.log_level = :info
    end
  end 
end
