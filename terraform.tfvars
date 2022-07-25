name_prefix                   = "tf"
resource_group_name           = "tfpoc"
location                      = "East US"
virtual_network_name          = "tfpoc"
virtual_network_address_space = ["10.13.0.0/16"]
Subnetlist = {
  "subnet_1" = { name = "vm_subnet", address = "10.13.1.0/24", service_delegation = "false" },
  "subnet_2" = { name = "apgw_subnet", address = "10.13.2.0/24", service_delegation = "false" },
  "subnet_3" = { name = "subnet_3", address = "10.13.3.0/24", service_delegation = "false" },
  "subnet_4" = { name = "AzureBastionSubnet", address = "10.13.250.0/24", service_delegation = "false" }
  "subnet_5" = { name = "pgsql_subnet", address = "10.13.4.0/24", service_delegation = "true" }
  "subnet_6" = { name = "aks-jb", address = "10.13.6.0/24", service_delegation = "false" }
}
