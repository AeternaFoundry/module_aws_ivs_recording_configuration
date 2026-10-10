output "ivs_recording_configurations_id" {
  description = "Map of id values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ivs_recording_configurations_arn" {
  description = "Map of arn values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ivs_recording_configurations_destination_configuration" {
  description = "Map of destination_configuration values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => one(v.destination_configuration) if v.destination_configuration != null && length(v.destination_configuration) > 0 }
}
output "ivs_recording_configurations_name" {
  description = "Map of name values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ivs_recording_configurations_recording_reconnect_window_seconds" {
  description = "Map of recording_reconnect_window_seconds values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.recording_reconnect_window_seconds if v.recording_reconnect_window_seconds != null }
}
output "ivs_recording_configurations_region" {
  description = "Map of region values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ivs_recording_configurations_state" {
  description = "Map of state values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ivs_recording_configurations_tags" {
  description = "Map of tags values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ivs_recording_configurations_tags_all" {
  description = "Map of tags_all values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ivs_recording_configurations_thumbnail_configuration" {
  description = "Map of thumbnail_configuration values across all ivs_recording_configurations, keyed the same as var.ivs_recording_configurations"
  value       = { for k, v in aws_ivs_recording_configuration.ivs_recording_configurations : k => one(v.thumbnail_configuration) if v.thumbnail_configuration != null && length(v.thumbnail_configuration) > 0 }
}

