# terraform-public-modules

Repository for public modules in use at Finalcad. Don't push anything that could hold sensitive information.

## Global secret

Module to retrieve secrets in AWS Secret Manager using Finalcad namming structure

### Usage

```hcl
# You must declare a provider to access security account
module "api_keys_secrets" {
  source = "git@github.com:FinalCAD/terraform-public-modules.git//global_secret?ref=1.0.0"

  secret_shortname     = "api_gateway_keys"
  cross_region         = true
  finalcad_environment = var.finalcad_environment

  providers = {
    aws = aws.security
  }
}
```
