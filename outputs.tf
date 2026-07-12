output "mssql_elasticpools_id" {
  description = "Map of id values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.id }
}
output "mssql_elasticpools_enclave_type" {
  description = "Map of enclave_type values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.enclave_type }
}
output "mssql_elasticpools_high_availability_replica_count" {
  description = "Map of high_availability_replica_count values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.high_availability_replica_count }
}
output "mssql_elasticpools_license_type" {
  description = "Map of license_type values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.license_type }
}
output "mssql_elasticpools_location" {
  description = "Map of location values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.location }
}
output "mssql_elasticpools_maintenance_configuration_name" {
  description = "Map of maintenance_configuration_name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.maintenance_configuration_name }
}
output "mssql_elasticpools_max_size_bytes" {
  description = "Map of max_size_bytes values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.max_size_bytes }
}
output "mssql_elasticpools_max_size_gb" {
  description = "Map of max_size_gb values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.max_size_gb }
}
output "mssql_elasticpools_name" {
  description = "Map of name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.name }
}
output "mssql_elasticpools_per_database_settings" {
  description = "Map of per_database_settings values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.per_database_settings }
}
output "mssql_elasticpools_resource_group_name" {
  description = "Map of resource_group_name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.resource_group_name }
}
output "mssql_elasticpools_server_name" {
  description = "Map of server_name values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.server_name }
}
output "mssql_elasticpools_sku" {
  description = "Map of sku values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.sku }
}
output "mssql_elasticpools_tags" {
  description = "Map of tags values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.tags }
}
output "mssql_elasticpools_zone_redundant" {
  description = "Map of zone_redundant values across all mssql_elasticpools, keyed the same as var.mssql_elasticpools"
  value       = { for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : k => v.zone_redundant }
}

