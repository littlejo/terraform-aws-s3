<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_logging.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging) | resource |
| [aws_s3_bucket_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_logging"></a> [logging](#input\_logging) | All about S3 logging | <pre>object({<br>    target_bucket = optional(string)<br>    target_prefix = optional(string)<br>  })</pre> | <pre>{<br>  "target_bucket": null,<br>  "target_prefix": null<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the bucket | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | S3 policy | `string` | `null` | no |
| <a name="input_public_access_block"></a> [public\_access\_block](#input\_public\_access\_block) | All about public access | <pre>object({<br>    block_public_acls       = optional(bool, true)<br>    block_public_policy     = optional(bool, true)<br>    ignore_public_acls      = optional(bool, true)<br>    restrict_public_buckets = optional(bool, true)<br>  })</pre> | <pre>{<br>  "block_public_acls": true,<br>  "block_public_policy": true,<br>  "ignore_public_acls": true,<br>  "restrict_public_buckets": true<br>}</pre> | no |
| <a name="input_server_side_encryption_configuration"></a> [server\_side\_encryption\_configuration](#input\_server\_side\_encryption\_configuration) | All about server side encryption | <pre>object({<br>    bucket_key_enabled = optional(bool, true)<br>    sse_algorithm      = optional(string, "aws:kms")<br>    kms_master_key_id  = optional(string) #optional but recommanded: https://avd.aquasec.com/misconfig/aws/s3/avd-aws-0132/#Terraform<br>  })</pre> | <pre>{<br>  "bucket_key_enabled": true,<br>  "sse_algorithm": "aws:kms"<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | S3 tags | `map(string)` | `{}` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | S3 bucket versionning ? | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Arn of S3 bucket |
| <a name="output_bucket_domain_name"></a> [bucket\_domain\_name](#output\_bucket\_domain\_name) | Domain name of S3 bucket, will be of format bucketname.s3.amazonaws.com |
| <a name="output_bucket_regional_domain_name"></a> [bucket\_regional\_domain\_name](#output\_bucket\_regional\_domain\_name) | Bucket region-specific domain name |
| <a name="output_id"></a> [id](#output\_id) | Name of S3 bucket |
<!-- END_TF_DOCS -->