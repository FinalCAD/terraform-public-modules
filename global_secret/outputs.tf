output "secrets" {
  description = "All secrets as a map"
  value       = jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)
}

output "secret_id" {
  description = "Secret id"
  value       = data.aws_secretsmanager_secret.secret.id
}
