variable "backup_dr_management_servers" {
  description = <<EOT
Map of backup_dr_management_servers, attributes below
Required:
    - location
    - name
Optional:
    - deletion_policy
    - project
    - type
    - networks (block):
        - network (required)
        - peering_mode (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    deletion_policy = optional(string)
    project         = optional(string)
    type            = optional(string)
    networks = optional(list(object({
      network      = string
      peering_mode = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

