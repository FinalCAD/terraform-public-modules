/**
* This tiny module enables to read a secret stored in AWS secret manager and to convert it to a terraform map.
*
* If both, finalcad_environment and aws_region_friendly_name are empty it will use terraform/global as key prefix.
* If cross_region is true, it will use terraform/finalcad_environment as key prefix
* Otherwise it will use terraform/finalcad_environment/aws_region_friendly_name
*/

locals {
  region      = var.cross_region ? "global" : var.aws_region_friendly_name
  env_path    = var.finalcad_environment == "" ? "global" : "${var.finalcad_environment}/${local.region}"
  secret_name = "terraform/${local.env_path}/${var.secret_shortname}"
}

data "aws_secretsmanager_secret" "secret" {
  name = local.secret_name
}

data "aws_secretsmanager_secret_version" "secret_version" {
  secret_id = data.aws_secretsmanager_secret.secret.id
}
