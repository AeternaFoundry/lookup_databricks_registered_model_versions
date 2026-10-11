output "registered_model_versions_lookup_full_name" {
  description = "Map of full_name values across all registered_model_versions_lookup, keyed the same as var.registered_model_versions_lookup except keys with no full_name are omitted"
  value       = { for k, v in data.databricks_registered_model_versions.registered_model_versions_lookup : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "registered_model_versions_lookup_model_versions" {
  description = "Map of model_versions values across all registered_model_versions_lookup, keyed the same as var.registered_model_versions_lookup except keys with no model_versions are omitted"
  value       = { for k, v in data.databricks_registered_model_versions.registered_model_versions_lookup : k => v.model_versions if v.model_versions != null && length(v.model_versions) > 0 }
}
output "registered_model_versions_lookup_provider_config" {
  description = "Map of provider_config values across all registered_model_versions_lookup, keyed the same as var.registered_model_versions_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_registered_model_versions.registered_model_versions_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

