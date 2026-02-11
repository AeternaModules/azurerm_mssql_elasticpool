variable "mssql_elasticpools" {
  description = <<EOT
Map of mssql_elasticpools, attributes below
Required:
    - location
    - name
    - resource_group_name
    - server_name
    - per_database_settings (block):
        - max_capacity (required)
        - min_capacity (required)
    - sku (block):
        - capacity (required)
        - family (optional)
        - name (required)
        - tier (required)
Optional:
    - enclave_type
    - license_type
    - maintenance_configuration_name
    - max_size_bytes
    - max_size_gb
    - tags
    - zone_redundant
EOT

  type = map(object({
    location                       = string
    name                           = string
    resource_group_name            = string
    server_name                    = string
    enclave_type                   = optional(string)
    license_type                   = optional(string)
    maintenance_configuration_name = optional(string) # Default: "SQL_Default"
    max_size_bytes                 = optional(number)
    max_size_gb                    = optional(number)
    tags                           = optional(map(string))
    zone_redundant                 = optional(bool)
    per_database_settings = object({
      max_capacity = number
      min_capacity = number
    })
    sku = object({
      capacity = number
      family   = optional(string)
      name     = string
      tier     = string
    })
  }))
}

