# This file contains the configuration for the HCP Vault secrets.

data "hcp_vault_secrets_app" "app_name" {
  app_name = var.app_name
}

data "hcp_project" "project_name" {
  project = var.project_name
}

locals {
  app_exists = data.hcp_vault_secrets_app.app_name != null && !contains(data.hcp_vault_secrets_app.app_name, "not found") ? true : false
}

resource "hcp_vault_secrets_secret" "my_secret" {
  count        = local.app_exists == true ? 1 : 0
  app_name     = var.app_name
  secret_name  = var.secret_name
  secret_value = var.secret_value
  project_id   = data.hcp_project.project_name.resource_id
}