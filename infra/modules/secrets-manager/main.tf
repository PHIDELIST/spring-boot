resource "aws_secretsmanager_secret" "spring-boot-env_secrets" {
  name        = var.secret_name
  description = "spring-boot-env-secrets"
}
