terraform {

  required_version = ">= 1.15"

  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = "~>2"
    }
  }
}