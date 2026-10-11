resource "oci_datascience_ml_application_instance" "datascience_ml_application_instances" {
  for_each = var.datascience_ml_application_instances

  compartment_id                   = each.value.compartment_id
  ml_application_id                = each.value.ml_application_id
  ml_application_implementation_id = each.value.ml_application_implementation_id
  defined_tags                     = each.value.defined_tags
  display_name                     = each.value.display_name
  freeform_tags                    = each.value.freeform_tags
  is_enabled                       = each.value.is_enabled

  dynamic "auth_configuration" {
    for_each = each.value.auth_configuration != null ? [each.value.auth_configuration] : []
    content {
      type = auth_configuration.value.type
    }
  }

  dynamic "configuration" {
    for_each = each.value.configuration != null ? each.value.configuration : []
    content {
      key   = configuration.value.key
      value = configuration.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

