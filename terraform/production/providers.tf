terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }
  required_version = ">= 0.14.9"
}

provider "azurerm" {
  subscription_id = "65cf88ad-4f35-4da2-a748-05fee8e63a91"
  features {}
}
