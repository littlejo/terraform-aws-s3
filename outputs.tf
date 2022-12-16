output "arn" {
  value       = aws_s3_bucket.this.arn
  description = "Arn of S3 bucket"
}

output "id" {
  value       = aws_s3_bucket.this.id
  description = "Name of S3 bucket"
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.this.bucket_domain_name
  description = "Domain name of S3 bucket, will be of format bucketname.s3.amazonaws.com"
}

output "bucket_regional_domain_name" {
  value       = aws_s3_bucket.this.bucket_regional_domain_name
  description = "Bucket region-specific domain name"
}
