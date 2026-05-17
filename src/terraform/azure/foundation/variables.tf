variable "project" {
  description = "The project name to use for resource naming."
  type        = string
  default     = "go"
}

variable "region" {
  description = "The region to deploy resources to."
  type        = string
  default     = "West Europe"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_access" {
  description = "Whether to allow public access to the resources."
  type        = bool
  default     = false
}