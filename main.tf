resource "azurerm_mssql_elasticpool" "mssql_elasticpools" {
  for_each = var.mssql_elasticpools

  location                        = each.value.location
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  server_name                     = each.value.server_name
  enclave_type                    = each.value.enclave_type
  high_availability_replica_count = each.value.high_availability_replica_count
  license_type                    = each.value.license_type
  maintenance_configuration_name  = each.value.maintenance_configuration_name
  max_size_bytes                  = each.value.max_size_bytes
  max_size_gb                     = each.value.max_size_gb
  tags                            = each.value.tags
  zone_redundant                  = each.value.zone_redundant

  per_database_settings {
    max_capacity = each.value.per_database_settings.max_capacity
    min_capacity = each.value.per_database_settings.min_capacity
  }

  sku {
    capacity = each.value.sku.capacity
    family   = each.value.sku.family
    name     = each.value.sku.name
    tier     = each.value.sku.tier
  }
}

