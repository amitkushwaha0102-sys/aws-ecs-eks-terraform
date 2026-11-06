variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "bucket" {
  default = "amit-2700"
}

variable "dynamo_db" {
  default = "dynamo-db"
}