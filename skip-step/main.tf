
terraform {
    backend "azurerm" {
    }
    required_providers {
        azurerm = {
        source = "hashicorp/azurerm"
        version = "3.20.0"
        }
    }
}

provider "azurerm" {
    skip_provider_registration = "true"
    features {}
}


resource "azurerm_resource_group" "rg" {
  name     = "terraform_azpipeline"
  location = "australiasoutheast"
}