resource "azurerm_resource_group" "rg" {
  name     = "${var.project}-foundation-${local.region_short}-rg"
  location = var.region
}