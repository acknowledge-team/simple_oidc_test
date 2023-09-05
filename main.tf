terraform {
  backend "azurerm" {
    resource_group_name = "rg-shared"
    storage_account_name = "stmhmtfcngd003"
    container_name = "tfstate"
    key = "terraform.state"
  }
  required_providers {
    azurerm = {
      version = "~>3.2"
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  location = "eastus"
  name = "rg-test-github-actions"
}
