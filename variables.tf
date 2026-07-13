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
  # --- Unconfirmed validation candidates, derived from azurerm_mssql_elasticpool's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.ValidateMsSqlElasticPoolName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: server_name
  #   source:    validate.ValidateMsSqlServerName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sku.name
  #   condition: contains(["BasicPool", "StandardPool", "PremiumPool", "GP_Gen4", "GP_Gen5", "GP_Fsv2", "GP_DC", "BC_Gen4", "BC_Gen5", "BC_DC", "HS_Gen5", "HS_PRMS", "HS_MOPRMS"], value)
  #   message:   must be one of: BasicPool, StandardPool, PremiumPool, GP_Gen4, GP_Gen5, GP_Fsv2, GP_DC, BC_Gen4, BC_Gen5, BC_DC, HS_Gen5, HS_PRMS, HS_MOPRMS
  # path: sku.capacity
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: sku.tier
  #   condition: contains(["Basic", "Standard", "Premium", "GeneralPurpose", "BusinessCritical", "Hyperscale"], value)
  #   message:   must be one of: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale
  # path: sku.family
  #   condition: contains(["Gen4", "Gen5", "Fsv2", "DC", "MOPRMS", "PRMS"], value)
  #   message:   must be one of: Gen4, Gen5, Fsv2, DC, MOPRMS, PRMS
  # path: maintenance_configuration_name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: per_database_settings.min_capacity
  #   source:    validation.FloatAtLeast(...) - no translation rule yet, add one
  # path: per_database_settings.max_capacity
  #   source:    validation.FloatAtLeast(...) - no translation rule yet, add one
  # path: max_size_bytes
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: max_size_gb
  #   source:    validation.FloatAtLeast(...) - no translation rule yet, add one
  # path: enclave_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: license_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: high_availability_replica_count
  #   condition: value >= 0 && value <= 4
  #   message:   must be between 0 and 4
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

