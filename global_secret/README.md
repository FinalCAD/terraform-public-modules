# global_secret

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
This tiny module enables to read a secret stored in AWS secret manager and to convert it to a terraform map.

If both, finalcad\_environment and aws\_region\_friendly\_name are empty it will use terraform/global as key prefix.
If cross\_region is true, it will use terraform/finalcad\_environment as key prefix
Otherwise it will use terraform/finalcad\_environment/aws\_region\_friendly\_name

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.48.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.48.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.secret](https://registry.terraform.io/providers/hashicorp/aws/4.48.0/docs/data-sources/secretsmanager_secret) | data source |
| [aws_secretsmanager_secret_version.secret_version](https://registry.terraform.io/providers/hashicorp/aws/4.48.0/docs/data-sources/secretsmanager_secret_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region_friendly_name"></a> [aws\_region\_friendly\_name](#input\_aws\_region\_friendly\_name) | AWS region friendly name (eg. Frankfurt, Tokyo...) | `string` | `""` | no |
| <a name="input_cross_region"></a> [cross\_region](#input\_cross\_region) | Indicates whether the secret can used accross all regions. If set to true, the path is different(/terraform/env/global/secret\_shortname rather than /terraform/env/region/secret\_shortname) | `bool` | `false` | no |
| <a name="input_finalcad_environment"></a> [finalcad\_environment](#input\_finalcad\_environment) | FinalCAD development environment (sandbox, staging or production) | `string` | `""` | no |
| <a name="input_secret_shortname"></a> [secret\_shortname](#input\_secret\_shortname) | Shortname of the secret (last part of the actual secret name) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret"></a> [secret](#output\_secret) | All secrets as a map |
| <a name="output_secret_id"></a> [secret\_id](#output\_secret\_id) | Secret id |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
