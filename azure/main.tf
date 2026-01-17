terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "rg_name" {
  type    = string
  default = "rg-gh-tf-demo"
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

output "rg_id" {
  value = azurerm_resource_group.rg.id
}
