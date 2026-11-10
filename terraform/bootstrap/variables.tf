variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "bucket" {
  default = "amit-9992202700"
}

variable "terraform-state-lock" {
  default = "dynamo-db2700"
}