## Insert the storage name after storage account is created!!! 
# EXAMPLE
 terraform {
    backend "azurerm" {
      resource_group_name  = "weighttracker-terraform-rg"
      storage_account_name = "tfstaten41rl" 
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
    }
  }
