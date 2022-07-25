

resource "azurerm_subnet" "subnet" {
  for_each = var.Subnetlist

  name                 = each.value.name
  address_prefixes     = [each.value.address]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name

  dynamic "delegation" {
    for_each = each.value.service_delegation == "true" ? [1] : []

    content {
      name = "delegation"

      service_delegation {
        name    = "Microsoft.DBforPostgreSQL/flexibleServers"
        actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", ]
      }
    }

  }

}

