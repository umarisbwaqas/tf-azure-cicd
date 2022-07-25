/* output "vnet_name" {
  value = var.virtual_network_name
} */
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}
output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}