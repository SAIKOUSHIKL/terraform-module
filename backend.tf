terraform {
  backend "azurerm" {
    resource_group_name  = "RG"
    storage_account_name = "storageaccountone02"
    container_name       = "statefile"
    key                  = "tfstate1.tfstate"
  }
}