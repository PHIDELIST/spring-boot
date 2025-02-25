output "spring-boot-env_secrets_arn" {
  description = "ARN of the spring-boot-env Secrets Manager Secret"
  value       = aws_secretsmanager_secret.spring-boot-env_secrets.arn
}
