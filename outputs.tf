output "mssql_elasticpools" {
  description = "All mssql_elasticpool resources"
  value       = azurerm_mssql_elasticpool.mssql_elasticpools
}
output "mssql_elasticpools_enclave_type" {
  description = "List of enclave_type values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.enclave_type]
}
output "mssql_elasticpools_high_availability_replica_count" {
  description = "List of high_availability_replica_count values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.high_availability_replica_count]
}
output "mssql_elasticpools_license_type" {
  description = "List of license_type values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.license_type]
}
output "mssql_elasticpools_location" {
  description = "List of location values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.location]
}
output "mssql_elasticpools_maintenance_configuration_name" {
  description = "List of maintenance_configuration_name values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.maintenance_configuration_name]
}
output "mssql_elasticpools_max_size_bytes" {
  description = "List of max_size_bytes values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.max_size_bytes]
}
output "mssql_elasticpools_max_size_gb" {
  description = "List of max_size_gb values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.max_size_gb]
}
output "mssql_elasticpools_name" {
  description = "List of name values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.name]
}
output "mssql_elasticpools_per_database_settings" {
  description = "List of per_database_settings values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.per_database_settings]
}
output "mssql_elasticpools_resource_group_name" {
  description = "List of resource_group_name values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.resource_group_name]
}
output "mssql_elasticpools_server_name" {
  description = "List of server_name values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.server_name]
}
output "mssql_elasticpools_sku" {
  description = "List of sku values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.sku]
}
output "mssql_elasticpools_tags" {
  description = "List of tags values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.tags]
}
output "mssql_elasticpools_zone_redundant" {
  description = "List of zone_redundant values across all mssql_elasticpools"
  value       = [for k, v in azurerm_mssql_elasticpool.mssql_elasticpools : v.zone_redundant]
}

