variable "name" {
  description = "Prefix for resource names (e.g. dev)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets, one per AZ"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets, one per AZ"
  type        = list(string)
}

variable "azs" {
  description = "List of Availability Zones, in the same order as the subnet CIDR lists"
  type        = list(string)
}

variable "app_port" {
  description = "Port on which the application container listens"
  type        = number
  default     = 8000
}