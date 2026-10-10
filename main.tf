resource "aws_ivs_recording_configuration" "ivs_recording_configurations" {
  for_each = var.ivs_recording_configurations

  name                               = each.value.name
  recording_reconnect_window_seconds = each.value.recording_reconnect_window_seconds
  region                             = each.value.region
  tags                               = each.value.tags
  tags_all                           = each.value.tags_all

  destination_configuration {
    s3 {
      bucket_name = each.value.destination_configuration.s3.bucket_name
    }
  }

  dynamic "thumbnail_configuration" {
    for_each = each.value.thumbnail_configuration != null ? [each.value.thumbnail_configuration] : []
    content {
      recording_mode          = thumbnail_configuration.value.recording_mode
      target_interval_seconds = thumbnail_configuration.value.target_interval_seconds
    }
  }
}

