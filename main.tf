resource "oci_database_management_cloud_db_system_cloud_stack_monitorings_management" "database_management_cloud_db_system_cloud_stack_monitorings_managements" {
  for_each = var.database_management_cloud_db_system_cloud_stack_monitorings_managements

  cloud_db_system_id            = each.value.cloud_db_system_id
  enable_cloud_stack_monitoring = each.value.enable_cloud_stack_monitoring
  is_enabled                    = each.value.is_enabled
  metadata                      = each.value.metadata

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

