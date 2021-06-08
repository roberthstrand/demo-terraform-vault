terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.57.0"
    }
    vault = {
      source = "hashicorp/vault"
      version = "2.19.1"
    }
  }
}