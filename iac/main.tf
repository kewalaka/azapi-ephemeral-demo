# Get info about the resource group the solution is deployed into
data "azurerm_resource_group" "parent" {
  name = local.resource_group_name
}
