variable "name" {
  description = "Name of the bucket"
  type        = string
}

variable "public_access_block" {
  description = "All about public access"
  type = object({
    block_public_acls       = optional(bool, true)
    block_public_policy     = optional(bool, true)
    ignore_public_acls      = optional(bool, true)
    restrict_public_buckets = optional(bool, true)
  })
  default = {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }
}

variable "versioning" {
  description = "S3 bucket versionning ?"
  type        = bool
  default     = true
}

variable "server_side_encryption_configuration" {
  description = "All about server side encryption"
  type = object({
    bucket_key_enabled = optional(bool, true)
    sse_algorithm      = optional(string, "aws:kms")
    kms_master_key_id  = optional(string) #optional but recommanded: https://avd.aquasec.com/misconfig/aws/s3/avd-aws-0132/#Terraform
  })
  default = {
    bucket_key_enabled = true
    sse_algorithm      = "aws:kms"
  }
}


variable "logging" { #https://avd.aquasec.com/misconfig/aws/s3/avd-aws-0089/#Terraform
  description = "All about S3 logging"
  type = object({
    target_bucket = optional(string)
    target_prefix = optional(string)
  })
  default = {
    target_bucket = null
    target_prefix = null
  }
}

variable "tags" {
  description = "S3 tags"
  type        = map(string)
  default     = {}
}
