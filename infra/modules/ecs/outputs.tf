output "ecs_cluster_id" {
  description = "ECS Cluster ID"
  value       = aws_ecs_cluster.this.id
}

output "ecs_service_id" {
  description = "ECS Service ID"
  value       = aws_ecs_service.this.id
}

output "ecs_task_definition_arn" {
  description = "ECS Task Definition ARN"
  value       = aws_ecs_task_definition.this.arn
}

output "ecs_task_execution_role_arn" {
  description = "ECS Task Execution Role ARN"
  value       = aws_iam_role.ecs_task_execution_role.arn
}
