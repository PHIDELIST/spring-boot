variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "spring-boot-env-alb"
}

variable "security_groups" {
  description = "Security groups for the ALB"
  type        = list(string)
}

variable "subnets" {
  description = "Subnets for the ALB"
  type        = list(string)
}

variable "target_group_port" {
  description = "Port for the target group"
  type        = number
   default     = 80
}

variable "target_group_protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = "HTTP"
}

variable "vpc_id" {
  description = "VPC ID for the ALB and target group"
  type        = string
}

variable "health_check_path" {
  description = "Health check path for the target group"
  type        = string
  default     = "/"
}

variable "listener_port" {
  description = "Port for the ALB listener"
  type        = number
    default     = 8080
}

variable "listener_protocol" {
  description = "Protocol for the ALB listener"
  type        = string
  default     = "HTTP"
}
