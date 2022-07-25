variable "resource_group_name" {
  type = string
}
variable "name" {
  type    = string
  default = "subnet1"
}
variable "virtual_network_name" {
  type = string
}

variable "Subnetlist" {
  type        = map(any)
  description = "The address space of vnet"
  default = {
    "subnet_1" = {
      name    = "subnet_2"
      address = ["10.13.1.0/24"]
    }
    "subnet_2" = {
      name    = "subnet_2"
      address = ["10.13.2.0/24"]
    }
    "subnet_3" = {
      name    = "apgw_subnet"
      address = ["10.13.3.0/24"]
    }
    bastion_subnet = {
      name    = "AzureBastionSubnet"
      address = ["10.13.250.0/24"]
    }

  }
}