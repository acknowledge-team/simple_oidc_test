terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    key              = "IIS_Config.ps1"
    use_oidc         = true
    use_azuread_auth = true
    resource_group_name = "env"
    storage_account_name = "storageaccountsevranenv"
    container_name = "data"
  }
}

resource "azurerm_resource_group" "app_grp" {
  name = "rg-githubaction"
  location = var.location
}
