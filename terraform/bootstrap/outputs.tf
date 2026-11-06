output "mybucket" {
  description = "Name of the S3 bucket that stores Terraform state"
  value       = aws_s3_bucket.mybucket.id
}

output "database" {
  description = "Name of the DynamoDB table used for state locking"
  value       = aws_dynamodb_table.database.name
}