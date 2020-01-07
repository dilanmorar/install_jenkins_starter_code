
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provision "shell" do |shell|
    shell.path = "environment/jenkins.sh"
  end
end
