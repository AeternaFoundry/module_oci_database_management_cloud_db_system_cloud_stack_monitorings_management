variable "database_management_cloud_db_system_cloud_stack_monitorings_managements" {
  description = <<EOT
Map of database_management_cloud_db_system_cloud_stack_monitorings_managements, attributes below
Required:
    - cloud_db_system_id
    - enable_cloud_stack_monitoring
Optional:
    - is_enabled
    - metadata
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cloud_db_system_id            = string
    enable_cloud_stack_monitoring = bool
    is_enabled                    = optional(bool)
    metadata                      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

