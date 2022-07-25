terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.92.0"
    }

  }
}
provider "azurerm" {
  #subscription_id = “7db50619-5f1d-4ebb-89d3-df6ddb755167”
  #client_id = “97545937–XXXX–XXXX-XXXX-XXXXXXXXXXXX”
  #client_secret = “.3GGR_XXXXX~XXXX-XXXXXXXXXXXXXXXX”
  #tenant_id = “73d20f0d-XXXX–XXXX–XXXX-XXXXXXXXXXXX” 
  features {}
}

module "rg" {
  source              = "./modules/rg"
  resource_group_name = "${var.name_prefix}-${var.resource_group_name}"
  location            = var.location
  tags                = var.tags

}

module "virtual-network" {
  source                        = "./modules/virtual-network"
  virtual_network_name          = "${var.name_prefix}-${var.virtual_network_name}"
  resource_group_name           = module.rg.rg_name
  location                      = var.location
  virtual_network_address_space = var.virtual_network_address_space
  tags                          = var.tags
}

module "subnet" {
  source               = "./modules/subnets"
  Subnetlist           = var.Subnetlist
  virtual_network_name = module.virtual-network.vnet_name
  resource_group_name  = module.rg.rg_name

  depends_on = [
    module.virtual-network
  ]
}
