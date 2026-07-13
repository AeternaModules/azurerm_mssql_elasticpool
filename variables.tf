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
    - high_availability_replica_count
    - license_type
    - maintenance_configuration_name
    - max_size_bytes
    - max_size_gb
    - tags
    - zone_redundant
EOT

  type = map(object({
    location                        = string
    name                            = string
    resource_group_name             = string
    server_name                     = string
    enclave_type                    = optional(string)
    high_availability_replica_count = optional(number)
    license_type                    = optional(string)
    maintenance_configuration_name  = optional(string)
    max_size_bytes                  = optional(number)
    max_size_gb                     = optional(number)
    tags                            = optional(map(string))
    zone_redundant                  = optional(bool)
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
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        contains(["BasicPool", "StandardPool", "PremiumPool", "GP_Gen4", "GP_Gen5", "GP_Fsv2", "GP_DC", "BC_Gen4", "BC_Gen5", "BC_DC", "HS_Gen5", "HS_PRMS", "HS_MOPRMS"], v.sku.name)
      )
    ])
    error_message = "must be one of: BasicPool, StandardPool, PremiumPool, GP_Gen4, GP_Gen5, GP_Fsv2, GP_DC, BC_Gen4, BC_Gen5, BC_DC, HS_Gen5, HS_PRMS, HS_MOPRMS"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.sku.capacity >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        contains(["Basic", "Standard", "Premium", "GeneralPurpose", "BusinessCritical", "Hyperscale"], v.sku.tier)
      )
    ])
    error_message = "must be one of: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.sku.family == null || (contains(["Gen4", "Gen5", "Fsv2", "DC", "MOPRMS", "PRMS"], v.sku.family))
      )
    ])
    error_message = "must be one of: Gen4, Gen5, Fsv2, DC, MOPRMS, PRMS"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.per_database_settings.min_capacity >= 0.0
      )
    ])
    error_message = "must be at least 0.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.per_database_settings.max_capacity >= 0.0
      )
    ])
    error_message = "must be at least 0.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.max_size_bytes == null || (v.max_size_bytes >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.max_size_gb == null || (v.max_size_gb >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.high_availability_replica_count == null || (v.high_availability_replica_count >= 0 && v.high_availability_replica_count <= 4)
      )
    ])
    error_message = "must be between 0 and 4"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_elasticpools : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

