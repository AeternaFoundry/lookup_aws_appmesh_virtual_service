variable "appmesh_virtual_service_lookup" {
  description = <<EOT
Map of appmesh_virtual_service_lookup, attributes below
Required:
    - mesh_name
    - name
Optional:
    - mesh_owner
    - region
    - tags
EOT

  type = map(object({
    mesh_name  = string
    name       = string
    mesh_owner = optional(string)
    region     = optional(string)
    tags       = optional(map(string))
  }))
}

