data "aws_appmesh_virtual_service" "appmesh_virtual_service_lookup" {
  for_each = var.appmesh_virtual_service_lookup

  mesh_name  = each.value.mesh_name
  name       = each.value.name
  mesh_owner = each.value.mesh_owner
  region     = each.value.region
  tags       = each.value.tags
}

