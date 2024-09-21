# terraform-hcp-vault-secrets-secret
add on for vault secrets apps

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.96.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcp_vault_secrets_secret.my_secret](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_secret) | resource |
| [hcp_project.project_name](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/project) | data source |
| [hcp_vault_secrets_app.app_name](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/vault_secrets_app) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The name of the application for which the secrets are being stored. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The project id for the vault secrets app | `string` | n/a | yes |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | The name of the secret being stored. | `string` | n/a | yes |
| <a name="input_secret_value"></a> [secret\_value](#input\_secret\_value) | The value of the secret being stored. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->