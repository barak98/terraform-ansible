
# Create Postgres server
resource "azurerm_postgresql_server" "postgres" {
  resource_group_name = var.resource_group_name
  location            = var.location
  name                = "weight-tracker-db"

  administrator_login          = var.admin_db_username
  administrator_login_password = var.admin_db_password

  sku_name   = "B_Gen5_1"
  version    = "11"
  storage_mb = 5120

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = false

  ssl_enforcement_enabled = false

  depends_on = [
    module.vm_app
  ]
}


# creats Postgres firewall rule
resource "azurerm_postgresql_firewall_rule" "postgres-firewall" {
  name                = "DBFirewall"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgres.name
  start_ip_address    = data.azurerm_public_ip.ip.ip_address
  end_ip_address      = data.azurerm_public_ip.ip.ip_address
}


