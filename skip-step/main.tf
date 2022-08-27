
terraform {
    backend "azurerm" {
    }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.20.0"
    }
    features {}
  }
}



resource "azurerm_resource_group" "rg" {
  name     = "resourcegroup-test-tbd-3"
  location = "australiasoutheast"
}