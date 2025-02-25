variable "cluster_name" {
  description = "ECS Cluster Name"
  type        = string
}

variable "task_family" {
  description = "Task Definition Family Name"
  type        = string
}

variable "container_name" {
  description = "Container Name"
  type        = string
}

variable "container_image" {
  description = "Container Image to Deploy"
  type        = string
}

variable "container_port" {
  description = "Container Port"
  type        = number
}

variable "subnets" {
  description = "List of Public Subnets for ECS"
  type        = list(string)
}

variable "security_group" {
  description = "Security Group for ECS Service"
  type        = string
}

variable "desired_count" {
  description = "Number of ECS tasks to run"
  type        = number
  default     = 1
}

variable "target_group_arn" {
  description = "ALB Target Group ARN"
  type        = string
}
variable "region" {
  type        = string
  description = "AWS region"
}
variable "secret_manager_arn" {
  type        = string
  description = "secrete manager arn"
}