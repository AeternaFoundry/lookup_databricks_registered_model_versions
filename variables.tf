variable "registered_model_versions_lookup" {
  description = <<EOT
Map of registered_model_versions_lookup, attributes below
Required:
    - full_name
Optional:
    - model_versions
    - provider_config
EOT

  type = map(object({
    full_name = string
    model_versions = optional(list(object({
      aliases = optional(list(object({
        alias_name   = optional(string)
        catalog_name = optional(string)
        id           = optional(string)
        model_name   = optional(string)
        schema_name  = optional(string)
        version_num  = optional(number)
      })))
      catalog_name = optional(string)
      comment      = optional(string)
      created_at   = optional(number)
      created_by   = optional(string)
      id           = optional(string)
      metastore_id = optional(string)
      model_name   = optional(string)
      model_version_dependencies = optional(list(object({
        dependencies = optional(list(object({
          connection = optional(list(object({
            connection_name = optional(string)
          })))
          credential = optional(list(object({
            credential_name = optional(string)
          })))
          function = optional(list(object({
            function_full_name = string
          })))
          table = optional(list(object({
            table_full_name = string
          })))
        })))
      })))
      run_id           = optional(string)
      run_workspace_id = optional(number)
      schema_name      = optional(string)
      source           = optional(string)
      status           = optional(string)
      storage_location = optional(string)
      updated_at       = optional(number)
      updated_by       = optional(string)
      version          = optional(number)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

