output "backup_dr_management_servers_id" {
  description = "Map of id values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no id are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_dr_management_servers_deletion_policy" {
  description = "Map of deletion_policy values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no deletion_policy are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "backup_dr_management_servers_location" {
  description = "Map of location values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no location are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.location if v.location != null && length(v.location) > 0 }
}
output "backup_dr_management_servers_management_uri" {
  description = "Map of management_uri values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no management_uri are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.management_uri if v.management_uri != null && length(v.management_uri) > 0 }
}
output "backup_dr_management_servers_name" {
  description = "Map of name values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no name are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "backup_dr_management_servers_networks" {
  description = "Map of networks values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no networks are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.networks if v.networks != null && length(v.networks) > 0 }
}
output "backup_dr_management_servers_oauth2_client_id" {
  description = "Map of oauth2_client_id values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no oauth2_client_id are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.oauth2_client_id if v.oauth2_client_id != null && length(v.oauth2_client_id) > 0 }
}
output "backup_dr_management_servers_project" {
  description = "Map of project values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no project are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "backup_dr_management_servers_type" {
  description = "Map of type values across all backup_dr_management_servers, keyed the same as var.backup_dr_management_servers except keys with no type are omitted"
  value       = { for k, v in google_backup_dr_management_server.backup_dr_management_servers : k => v.type if v.type != null && length(v.type) > 0 }
}

