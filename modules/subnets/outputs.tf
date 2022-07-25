output "subnet_ids" {
  value = tomap({ for k, s in azurerm_subnet.subnet : k => s.id })
}