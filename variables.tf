variable "datascience_ml_application_instances" {
  description = <<EOT
Map of datascience_ml_application_instances, attributes below
Required:
    - compartment_id
    - ml_application_id
    - ml_application_implementation_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - is_enabled
    - auth_configuration (block):
        - type (required)
    - configuration (block):
        - key (required)
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                   = string
    ml_application_id                = string
    ml_application_implementation_id = string
    defined_tags                     = optional(map(string))
    display_name                     = optional(string)
    freeform_tags                    = optional(map(string))
    is_enabled                       = optional(bool)
    auth_configuration = optional(object({
      type = string
    }))
    configuration = optional(list(object({
      key   = string
      value = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datascience_ml_application_instances : (
        v.auth_configuration == null || (contains([for v in ["IAM"] : lower(v)], lower(v.auth_configuration.type)))
      )
    ])
    error_message = "must be one of: \"IAM\""
  }
}

