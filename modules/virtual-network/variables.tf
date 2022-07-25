variable "virtual_network_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "virtual_network_address_space" {
  type        = list(string)
  description = "address space of the virtual network"
}
variable "tags" {
  type        = map(string)
  description = "Tag for the deployment"
}