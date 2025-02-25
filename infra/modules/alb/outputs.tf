
output "target_group_arn" {
  value = aws_lb_target_group.app_target_group.arn
}

output "dns_name" {
  value = aws_lb.app_lb.dns_name
}
output "listener_arn" {
  description = "The ARN of the application load balancer listener"
  value       = aws_lb_listener.app_listener.arn
}
output "alb_name" {
  value = aws_lb.app_lb.name
  description = "The name of the Application Load Balancer"
}
