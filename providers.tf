# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.62.1"
    }
  }
}

provider "azurerm" {
  features {}
}

