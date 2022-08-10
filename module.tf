provider "azurerm" {
  features {}

  subscription_id = "a6d0e549-78fc-495b-a408-b3cdebadce37"
  client_id       = "5118d49c-0c9a-4924-b100-8ce5bd9ad819"
  client_secret   = "gV.8Q~1yLBpJ6tamSMkd2EWZDvxsP.u44bD7TcZ."
  tenant_id       = "6087e97c-96ca-4fc2-a403-b61de33d7cd0"
}

module "vm1" {
    source = "github.com/SAIKOUSHIKL/terraformmodule.git"
azurerm_resource_group = "new-rg11"
location = "UK South"
azurerm_virtual_network = "new-vnet11"
address_space = ["10.0.0.0/16"]
azurerm_subnet11 = "subnet1"
address_prefixes11 = ["10.0.1.0/24"]
azurerm_subnet12= "subnet2"
address_prefixes12 = ["10.0.2.0/24"]
azurerm_subnet13 = "subnet3"
address_prefixes13 = ["10.0.3.0/24"]
azurerm_network_security_group = "new-nsg11"
name                       = "rule11"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"
}

module "vm2" {
    source = "github.com/SAIKOUSHIKL/terraformmodule.git"
azurerm_resource_group = "new-rg12"
location = "UK South"
azurerm_virtual_network = "new-vnet12"
address_space = ["10.0.0.0/16"]
azurerm_subnet11 = "subnet1"
address_prefixes11 = ["10.0.1.0/24"]
azurerm_subnet12= "subnet2"
address_prefixes12 = ["10.0.2.0/24"]
azurerm_subnet13 = "subnet3"
address_prefixes13 = ["10.0.3.0/24"]
azurerm_network_security_group = "new-nsg12"
name                       = "rule12"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"
}

module "vm3" {
    source = "github.com/SAIKOUSHIKL/terraformmodule.git"
azurerm_resource_group = "new-rg13"
location = "UK South"
azurerm_virtual_network = "new-vnet13"
address_space = ["10.0.0.0/16"]
azurerm_subnet11 = "subnet1"
address_prefixes11 = ["10.0.1.0/24"]
azurerm_subnet12= "subnet2"
address_prefixes12 = ["10.0.2.0/24"]
azurerm_subnet13 = "subnet3"
address_prefixes13 = ["10.0.3.0/24"]
azurerm_network_security_group = "new-nsg13"
name                       = "rule13"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"
}

module "vm4" {
    source = "github.com/SAIKOUSHIKL/terraformmodule.git"
azurerm_resource_group = "new-rg14"
location = "UK South"
azurerm_virtual_network = "new-vnet14"
address_space = ["10.0.0.0/16"]
azurerm_subnet11 = "subnet1"
address_prefixes11 = ["10.0.1.0/24"]
azurerm_subnet12= "subnet2"
address_prefixes12 = ["10.0.2.0/24"]
azurerm_subnet13 = "subnet3"
address_prefixes13 = ["10.0.3.0/24"]
azurerm_network_security_group = "new-nsg14"
name                       = "rule14"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"
source_port_range          = "*"
destination_port_range     = "*"
source_address_prefix      = "*"
destination_address_prefix = "*"
}
