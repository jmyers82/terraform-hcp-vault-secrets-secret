#####################################################
# Lookup Project Name
data "hcp_project" "project_name" {}

#####################################################
# Create a new secret
resource "hcp_vault_secrets_secret" "my_secret" {
  app_name     = var.app_name
  secret_name  = var.secret_name
  secret_value = var.secret_value
  project_id   = data.hcp_project.project_name.resource_id
}


