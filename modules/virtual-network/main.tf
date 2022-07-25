resource "azurerm_virtual_network" "vnet" {
  name                = "${var.virtual_network_name}-vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.virtual_network_address_space
  tags                = var.tags

}
/*
resource "azurerm_subnet" "subnet" {
    for_each = var.subnets
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    name = each.value["name"]
    address_prefixes = each.value["address_prefixes"]
}
*/