output "globalaccelerator_endpoint_groups_id" {
  description = "Map of id values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "globalaccelerator_endpoint_groups_arn" {
  description = "Map of arn values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "globalaccelerator_endpoint_groups_endpoint_configuration" {
  description = "Map of endpoint_configuration values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.endpoint_configuration if v.endpoint_configuration != null && length(v.endpoint_configuration) > 0 }
}
output "globalaccelerator_endpoint_groups_endpoint_group_region" {
  description = "Map of endpoint_group_region values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.endpoint_group_region if v.endpoint_group_region != null && length(v.endpoint_group_region) > 0 }
}
output "globalaccelerator_endpoint_groups_health_check_interval_seconds" {
  description = "Map of health_check_interval_seconds values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.health_check_interval_seconds if v.health_check_interval_seconds != null }
}
output "globalaccelerator_endpoint_groups_health_check_path" {
  description = "Map of health_check_path values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.health_check_path if v.health_check_path != null && length(v.health_check_path) > 0 }
}
output "globalaccelerator_endpoint_groups_health_check_port" {
  description = "Map of health_check_port values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.health_check_port if v.health_check_port != null }
}
output "globalaccelerator_endpoint_groups_health_check_protocol" {
  description = "Map of health_check_protocol values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.health_check_protocol if v.health_check_protocol != null && length(v.health_check_protocol) > 0 }
}
output "globalaccelerator_endpoint_groups_listener_arn" {
  description = "Map of listener_arn values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.listener_arn if v.listener_arn != null && length(v.listener_arn) > 0 }
}
output "globalaccelerator_endpoint_groups_port_override" {
  description = "Map of port_override values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.port_override if v.port_override != null && length(v.port_override) > 0 }
}
output "globalaccelerator_endpoint_groups_threshold_count" {
  description = "Map of threshold_count values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.threshold_count if v.threshold_count != null }
}
output "globalaccelerator_endpoint_groups_traffic_dial_percentage" {
  description = "Map of traffic_dial_percentage values across all globalaccelerator_endpoint_groups, keyed the same as var.globalaccelerator_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_endpoint_group.globalaccelerator_endpoint_groups : k => v.traffic_dial_percentage if v.traffic_dial_percentage != null }
}

