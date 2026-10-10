variable "ivs_recording_configurations" {
  description = <<EOT
Map of ivs_recording_configurations, attributes below
Required:
    - destination_configuration (block):
        - s3 (required, block):
            - bucket_name (required)
Optional:
    - name
    - recording_reconnect_window_seconds
    - region
    - tags
    - tags_all
    - thumbnail_configuration (block):
        - recording_mode (optional)
        - target_interval_seconds (optional)
EOT

  type = map(object({
    name                               = optional(string)
    recording_reconnect_window_seconds = optional(number)
    region                             = optional(string)
    tags                               = optional(map(string))
    tags_all                           = optional(map(string))
    destination_configuration = object({
      s3 = object({
        bucket_name = string
      })
    })
    thumbnail_configuration = optional(object({
      recording_mode          = optional(string)
      target_interval_seconds = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ivs_recording_configurations : (
        v.recording_reconnect_window_seconds == null || (v.recording_reconnect_window_seconds >= 0 && v.recording_reconnect_window_seconds <= 300)
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.ivs_recording_configurations : (
        v.thumbnail_configuration == null || (v.thumbnail_configuration.target_interval_seconds == null || (v.thumbnail_configuration.target_interval_seconds >= 5 && v.thumbnail_configuration.target_interval_seconds <= 60))
      )
    ])
    error_message = "must be between 5 and 60"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

