output "mssql_elasticpools_id" {
  description = "Map of id values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_elasticpools_enclave_type" {
  description = "Map of enclave_type values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.enclave_type if v.enclave_type != null && length(v.enclave_type) > 0 }
}
output "mssql_elasticpools_high_availability_replica_count" {
  description = "Map of high_availability_replica_count values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.high_availability_replica_count if v.high_availability_replica_count != null }
}
output "mssql_elasticpools_license_type" {
  description = "Map of license_type values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.license_type if v.license_type != null && length(v.license_type) > 0 }
}
output "mssql_elasticpools_location" {
  description = "Map of location values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.location if v.location != null && length(v.location) > 0 }
}
output "mssql_elasticpools_maintenance_configuration_name" {
  description = "Map of maintenance_configuration_name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.maintenance_configuration_name if v.maintenance_configuration_name != null && length(v.maintenance_configuration_name) > 0 }
}
output "mssql_elasticpools_max_size_bytes" {
  description = "Map of max_size_bytes values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.max_size_bytes if v.max_size_bytes != null }
}
output "mssql_elasticpools_max_size_gb" {
  description = "Map of max_size_gb values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.max_size_gb if v.max_size_gb != null }
}
output "mssql_elasticpools_name" {
  description = "Map of name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mssql_elasticpools_per_database_settings" {
  description = "Map of per_database_settings values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.per_database_settings if v.per_database_settings != null && length(v.per_database_settings) > 0 }
}
output "mssql_elasticpools_resource_group_name" {
  description = "Map of resource_group_name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "mssql_elasticpools_server_name" {
  description = "Map of server_name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.server_name if v.server_name != null && length(v.server_name) > 0 }
}
output "mssql_elasticpools_sku" {
  description = "Map of sku values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "mssql_elasticpools_tags" {
  description = "Map of tags values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mssql_elasticpools_zone_redundant" {
  description = "Map of zone_redundant values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.zone_redundant if v.zone_redundant != null }
}

