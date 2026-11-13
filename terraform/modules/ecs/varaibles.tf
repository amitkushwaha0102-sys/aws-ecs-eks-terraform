variable "name" {
  description = "Prefix for resource names"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for ALB and tasks"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "app_sg_id" {
  description = "Security group ID for the tasks"
  type        = string
}

variable "image" {
  description = "Full image URI including tag"
  type        = string
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 8000
}

variable "desired_count" {
  description = "Number of tasks to run"
  type        = number
  default     = 1
}
