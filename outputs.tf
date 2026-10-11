output "datascience_ml_application_instances_id" {
  description = "Map of id values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no id are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_ml_application_instances_auth_configuration" {
  description = "Map of auth_configuration values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no auth_configuration are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => one(v.auth_configuration) if v.auth_configuration != null && length(v.auth_configuration) > 0 }
}
output "datascience_ml_application_instances_compartment_id" {
  description = "Map of compartment_id values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no compartment_id are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_ml_application_instances_configuration" {
  description = "Map of configuration values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no configuration are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "datascience_ml_application_instances_defined_tags" {
  description = "Map of defined_tags values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no defined_tags are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "datascience_ml_application_instances_display_name" {
  description = "Map of display_name values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no display_name are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datascience_ml_application_instances_freeform_tags" {
  description = "Map of freeform_tags values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "datascience_ml_application_instances_is_enabled" {
  description = "Map of is_enabled values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no is_enabled are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.is_enabled if v.is_enabled != null }
}
output "datascience_ml_application_instances_lifecycle_details" {
  description = "Map of lifecycle_details values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "datascience_ml_application_instances_lifecycle_substate" {
  description = "Map of lifecycle_substate values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no lifecycle_substate are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.lifecycle_substate if v.lifecycle_substate != null && length(v.lifecycle_substate) > 0 }
}
output "datascience_ml_application_instances_ml_application_id" {
  description = "Map of ml_application_id values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no ml_application_id are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.ml_application_id if v.ml_application_id != null && length(v.ml_application_id) > 0 }
}
output "datascience_ml_application_instances_ml_application_implementation_id" {
  description = "Map of ml_application_implementation_id values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no ml_application_implementation_id are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.ml_application_implementation_id if v.ml_application_implementation_id != null && length(v.ml_application_implementation_id) > 0 }
}
output "datascience_ml_application_instances_ml_application_implementation_name" {
  description = "Map of ml_application_implementation_name values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no ml_application_implementation_name are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.ml_application_implementation_name if v.ml_application_implementation_name != null && length(v.ml_application_implementation_name) > 0 }
}
output "datascience_ml_application_instances_ml_application_name" {
  description = "Map of ml_application_name values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no ml_application_name are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.ml_application_name if v.ml_application_name != null && length(v.ml_application_name) > 0 }
}
output "datascience_ml_application_instances_prediction_endpoint_details" {
  description = "Map of prediction_endpoint_details values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no prediction_endpoint_details are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.prediction_endpoint_details if v.prediction_endpoint_details != null && length(v.prediction_endpoint_details) > 0 }
}
output "datascience_ml_application_instances_state" {
  description = "Map of state values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no state are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datascience_ml_application_instances_system_tags" {
  description = "Map of system_tags values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no system_tags are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "datascience_ml_application_instances_time_created" {
  description = "Map of time_created values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no time_created are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "datascience_ml_application_instances_time_updated" {
  description = "Map of time_updated values across all datascience_ml_application_instances, keyed the same as var.datascience_ml_application_instances except keys with no time_updated are omitted"
  value       = { for k, v in oci_datascience_ml_application_instance.datascience_ml_application_instances : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

