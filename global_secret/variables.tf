variable "secret_shortname" {
  description = "Shortname of the secret (last part of the actual secret name)"
  type        = string
}

variable "cross_region" {
  description = "Indicates whether the secret can used accross all regions. If set to true, the path is different(/terraform/env/global/secret_shortname rather than /terraform/env/region/secret_shortname)"
  default     = false
  type        = bool
}

variable "finalcad_environment" {
  default     = ""
  description = "FinalCAD development environment (sandbox, staging or production)"
  type        = string
}

variable "finalcad_region" {
  default     = ""
  description = "FinalCAD region (eu, ie, us or ap)"
  type        = string
}
