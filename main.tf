provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = data.vault_azure_access_credentials.azure.client_id
  client_secret   = data.vault_azure_access_credentials.azure.client_secret
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
