resource "google_backup_dr_management_server" "backup_dr_management_servers" {
  for_each = var.backup_dr_management_servers

  location        = each.value.location
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  type            = each.value.type

  dynamic "networks" {
    for_each = each.value.networks != null ? each.value.networks : []
    content {
      network      = networks.value.network
      peering_mode = networks.value.peering_mode
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

