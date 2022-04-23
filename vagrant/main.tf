terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "~> 4.0.0"
    }
  }
}

resource "vagrant_vm" "my_vagrant_vm" {
  vagrantfile_dir = "/Users/wei/vm/tf_demo"
  env = {
    KEY = "value",
  }
  get_ports = true
}