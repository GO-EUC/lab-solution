resource "random_string" "random" {
  length  = 5
  special = false
}

resource "azurerm_storage_account" "st" {
  name                = "${var.project}${local.region_short}${lower(random_string.random.result)}st"
  resource_group_name = azurerm_resource_group.rg.name

  location                      = azurerm_resource_group.rg.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = var.public_access

  network_rules {
    default_action             = "Deny"
    ip_rules                   = local.public_ip
    virtual_network_subnet_ids = [azurerm_subnet.snet.id]
  }
}

resource "azurerm_storage_container" "stc" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.st.id
  container_access_type = "private"
}