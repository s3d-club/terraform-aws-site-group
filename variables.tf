variable "az_blacklist" {
  default = []
  type    = list(string)

  description = <<-END
    a list of avalibility zones that should not be used.
    https://go.s3d.club/tf/site-group#az_blacklist
    END
}

variable "cidrs" {
  default = null
  type    = list(string)

  description = <<-END
    a list of CIDRs.
    https://go.s3d.club/tf/site-group#cidrs
    END
}

variable "cidr6s" {
  default = []
  type    = list(string)

  description = <<-END
    a list of CIDRs.
    https://go.s3d.club/tf/site-group#cidr6s
    END
}

variable "domain" {
  default = null
  type    = string

  description = <<-END
    a domain that already has a route 53 hosted zone.
    https://go.s3d.club/tf/site-group#domain
    END
}

variable "ecrs" {
  default = []
  type    = list(string)

  description = <<-END
    a list of names for the ECR instances.
    https://go.s3d.club/tf/site-group#ecrs
    END
}

variable "ec2_key_name" {
  default = null
  type    = string

  description = <<-END
    an ec2 key name.
    https://go.s3d.club/tf/site-group#ec2_key_name
    END
}

variable "egress_cidrs" {
  default = null
  type    = list(string)

  description = <<-END
    a list of addresses for open egress.
    https://go.s3d.club/tf/site-group#egress_cidrs
    END
}

variable "egress_cidr6s" {
  default = []
  type    = list(string)

  description = <<-END
    a list of addresses for open egress.
    https://go.s3d.club/tf/site-group#egress_cidr6s
    END
}

variable "enable_ec2" {
  default = false
  type    = bool

  description = <<-END
    an option to enable the EC2 instance.
    https://go.s3d.club/tf/site-group#enable_ec2
    END
}

variable "enable_tf_bucket" {
  default = false
  type    = bool

  description = <<-END
    an option that enables the creation of an S3 Bucket for storage of Terraform state.
    https://go.s3d.club/tf/site-group#enable_tf_lock_table
    END
}

variable "enable_tf_lock_table" {
  default = false
  type    = bool

  description = <<-END
    an option that enables the creation of a DynamoDB table for Terraform locks.
    https://go.s3d.club/tf/site-group#enable_tf_lock_table
    END
}

variable "ec2_work_count" {
  default = 1
  type    = number

  description = <<-END
    the count of ec2 worker instances.
    https://go.s3d.club/tf/site-group#ec2_work_count
    END
}

variable "kms_key_id" {
  type = string

  description = <<-END
    the ID of a KMS key.
    https://go.s3d.club/tf/site-group#kms_key_arn
    END
}

variable "name_prefix" {
  default = null
  type    = string

  description = <<-END
    a prefix for resource names.
    https://go.s3d.club/tf/site-group#name_prefix
    END
}

variable "public_subnets" {
  default = null
  type    = list(string)

  description = <<-END
		a list of subnets where instances that should be public may be placed. Or
    the value `null` if a random subnet should be used.
    https://go.s3d.club/tf/site-group#public_subnets
    END
}

variable "tags" {
  default = {}
  type    = map(string)

  description = <<-END
    a map of tags for resources.
    https://go.s3d.club/tf/site-group#tags
    END
}

variable "vpc_id" {
  default = null
  type    = string

  description = <<-END
    a VPC ID.
    https://go.s3d.club/tf/site-group#vpc_id
    END
}
