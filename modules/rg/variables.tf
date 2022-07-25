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
    "Owner"       = "<name>"
  }
}