Vagrant.configure("2") do |config|

  config.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
  config.vm.hostname = "puppet-test"
  config.vm.post_up_message = "Access the test mirror at http://localhost:8080/"

  config.librarian_puppet.puppetfile_dir = "puppet"
  config.librarian_puppet.destructive = false

  config.vm.network "forwarded_port", guest: 8000, host: 8080

  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "puppet/modules"
    puppet.environment_path = "puppet/environments"
    puppet.environment = "default"
  end

end
