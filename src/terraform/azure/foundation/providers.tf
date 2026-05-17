terraform {

  required_version = ">= 1.15"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3"
    }
  }
}

provider "azurerm" {
  features {
  }
}