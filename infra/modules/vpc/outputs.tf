output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main_vpc.id
}

output "public_subnets" {
  description = "Public subnet IDs"
  value       = aws_subnet.public_subnets[*].id
}

output "private_subnets" {
  description = "Private subnet IDs"
  value       = aws_subnet.private_subnets[*].id
}

output "alb_security_group_id" {
  description = "Security Group ID for ALB"
  value       = aws_security_group.alb_sg.id
}

output "ecs_security_group_id" {
  description = "Security Group ID for ECS"
  value       = aws_security_group.ecs_sg.id
}

