variable "name_prefix" {
  type = string

}
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
variable "location" {
  type        = string
  description = "Region for the infrastructure deployment"
}
variable "tags" {
  type        = map(string)
  description = "Tags used for the deployment"
  default = {
    "Environment" = "Lab"
    "Owner"       = "vicks"
    "Project"     = "mega"
    "ManagedBy"   = "Terraform"
  }
}
###Vnet
variable "virtual_network_name" {
  type = string
}

variable "virtual_network_address_space" {
  type        = list(string)
  description = "address space of the virtual network"
}
###subents
variable "Subnetlist" {
  type        = map(any)
  description = "The asubnets for vnet"

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

