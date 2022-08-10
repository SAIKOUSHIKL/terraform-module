
resource "azurerm_resource_group" "rg11" {
  name     = var.azurerm_resource_group
  location = var.location
}
resource "azurerm_virtual_network" "vnet11" {
  name                = var.azurerm_virtual_network
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.azurerm_resource_group
  depends_on = [
    azurerm_resource_group.rg11
  ]
}
resource "azurerm_subnet" "subnet11" {
  name                 = var.azurerm_subnet11
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes11
  depends_on = [
    azurerm_virtual_network.vnet11
  ]
}
resource "azurerm_subnet" "subnet12" {
  name                 = var.azurerm_subnet12
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes12
  depends_on = [
    azurerm_virtual_network.vnet11
  ]
}
resource "azurerm_subnet" "subnet13" {
  name                 = var.azurerm_subnet13
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes13
  depends_on = [
    azurerm_virtual_network.vnet11
  ]
}
resource "azurerm_network_security_group" "nsg11" {
  name                = var.azurerm_network_security_group
  location            = var.location
  resource_group_name = var.azurerm_resource_group

  security_rule {
    name                       = var.name
    priority                   = var.priority 
    direction                  = var.direction 
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }
  depends_on = [
    azurerm_resource_group.rg11
  ]
}
