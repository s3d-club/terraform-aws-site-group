variable "az_blacklist" {
  default = []
  type    = list(string)

  description = <<-END
    A list of avalibility zones that should not be used.
    END
}

variable "cidrs" {
  default = null
  type    = list(string)

  description = <<-END
    A list of CIDRs.
    END
}

variable "cidr6s" {
  default = []
  type    = list(string)

  description = <<-END
    A list of CIDRs.
    END
}

variable "domain" {
  default = null
  type    = string

  description = <<-END
    A domain that already has a route 53 hosted zone.
    END
}

variable "ecrs" {
  default = []
  type    = list(string)

  description = <<-END
    A list of names for the ECR instances.
    END
}

variable "ec2_key_name" {
  default = null
  type    = string

  description = <<-END
    An ec2 key name.
    END
}

variable "egress_cidrs" {
  default = null
  type    = list(string)

  description = <<-END
    A list of addresses for open egress.
    END
}

variable "egress_cidr6s" {
  default = []
  type    = list(string)

  description = <<-END
    A list of addresses for open egress.
    END
}

variable "enable_ec2" {
  default = false
  type    = bool

  description = <<-END
    An option to enable the EC2 instance.
    END
}

variable "enable_tf_bucket" {
  default = false
  type    = bool

  description = <<-END
    An option that enables the creation of an S3 Bucket for storage of Terraform state.
    END
}

variable "enable_tf_lock_table" {
  default = false
  type    = bool

  description = <<-END
    An option that enables the creation of a DynamoDB table for Terraform locks.
    END
}

variable "kms_key_id" {
  type = string

  description = <<-END
    The ID of a KMS key.
    END
}

variable "name" {
  type = string

  description = <<-END
    A logical name for the site group and prefix for the associated resource names.
    END
}

variable "public_subnets" {
  default = null
  type    = list(string)

  description = <<-END
    A list of subnets where instances that should be public may be placed. Or
    the value `null` if a random subnet should be used.
    END
}

variable "tags" {
  default = {}
  type    = map(string)

  description = <<-END
    A map of tags for resources.
    END
}

variable "vpc_id" {
  default = null
  type    = string

  description = <<-END
    A VPC ID.
    END
}
