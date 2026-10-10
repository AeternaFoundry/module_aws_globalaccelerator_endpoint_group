variable "globalaccelerator_endpoint_groups" {
  description = <<EOT
Map of globalaccelerator_endpoint_groups, attributes below
Required:
    - listener_arn
Optional:
    - endpoint_group_region
    - health_check_interval_seconds
    - health_check_path
    - health_check_port
    - health_check_protocol
    - threshold_count
    - traffic_dial_percentage
    - endpoint_configuration (block):
        - attachment_arn (optional)
        - client_ip_preservation_enabled (optional)
        - endpoint_id (optional)
        - weight (optional)
    - port_override (block):
        - endpoint_port (required)
        - listener_port (required)
EOT

  type = map(object({
    listener_arn                  = string
    endpoint_group_region         = optional(string)
    health_check_interval_seconds = optional(number)
    health_check_path             = optional(string)
    health_check_port             = optional(number)
    health_check_protocol         = optional(string)
    threshold_count               = optional(number)
    traffic_dial_percentage       = optional(number)
    endpoint_configuration = optional(list(object({
      attachment_arn                 = optional(string)
      client_ip_preservation_enabled = optional(bool)
      endpoint_id                    = optional(string)
      weight                         = optional(number)
    })))
    port_override = optional(list(object({
      endpoint_port = number
      listener_port = number
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.port_override == null || (length(v.port_override) <= 10)
      )
    ])
    error_message = "Each port_override list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.endpoint_configuration == null || alltrue([for item in v.endpoint_configuration : (item.endpoint_id == null || (length(item.endpoint_id) >= 1 && length(item.endpoint_id) <= 255))])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.health_check_interval_seconds == null || (v.health_check_interval_seconds >= 10 && v.health_check_interval_seconds <= 30)
      )
    ])
    error_message = "must be between 10 and 30"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.health_check_path == null || (length(v.health_check_path) >= 1 && length(v.health_check_path) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.health_check_port == null || (v.health_check_port >= 1 && v.health_check_port <= 65535)
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.port_override == null || alltrue([for item in v.port_override : (item.endpoint_port >= 1 && item.endpoint_port <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.port_override == null || alltrue([for item in v.port_override : (item.listener_port >= 1 && item.listener_port <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.threshold_count == null || (v.threshold_count >= 1 && v.threshold_count <= 10)
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_endpoint_groups : (
        v.traffic_dial_percentage == null || (v.traffic_dial_percentage >= 0.0 && v.traffic_dial_percentage <= 100.0)
      )
    ])
    error_message = "must be between 0.0 and 100.0"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

