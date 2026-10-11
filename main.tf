data "databricks_registered_model_versions" "registered_model_versions_lookup" {
  for_each = var.registered_model_versions_lookup

  full_name       = each.value.full_name
  model_versions  = each.value.model_versions
  provider_config = each.value.provider_config
}

