data "mongodbatlas_roles_org_id" "main" {}

resource "mongodbatlas_project" "main" {
  org_id = data.mongodbatlas_roles_org_id.main.org_id
  name = "productivityApp"
}

resource "mongodbatlas_serverless_instance" "database" {
  project_id = mongodbatlas_project.main.id
  name = "productivityApp"
  
  provider_settings_backing_provider_name = "AWS"
  provider_settings_provider_name = "SERVERLESS"
  provider_settings_region_name = var.atlas_region
}
