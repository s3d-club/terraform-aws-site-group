variable "az_blacklist" {
  type = list(string)

  description = <<-END
    Availability Zone Black List
    https://go.s3d.club/site-group#az_blacklist
    END
}

variable "cidrs" {
  type = list(string)

  description = <<-END
    CIDRs
    https://go.s3d.club/site-group#cidrs
    END
}

variable "cidr6s" {
  type = list(string)

  description = <<-END
    CIDR6s
    https://go.s3d.club/site-group#cidr6s
    END
}

variable "domain" {
  type = string

  description = <<-END
    Domain
    https://go.s3d.club/site-group#domain
    END
}

variable "ecrs" {
  type = list(string)

  description = <<-END
    Elastic Container Registries
    https://go.s3d.club/site-group#cidr6s
    END
}

variable "ec2_key_name" {
  type = string

  description = <<-END
    EC2 Key Name
    https://go.s3d.club/site-group#ec2_key_name
    END
}

variable "eks_version" {
  default = null
  type    = string

  description = <<-END
    EKS Cluster Version or `null` to disable EKS
    https://go.s3d.club/site-group#eks_cluster_version
    END
}

variable "enable_ec2" {
  default = false
  type    = bool

  description = <<-END
    Enable the deployment of an EC2 instance
    https://go.s3d.club/site-group#enable_ec2
    END
}

variable "enable_tf_lock_table" {
  default = true
  type    = bool

  description = <<-END
    Enable a Terraform Lock Table for the group
    https://go.s3d.club/site-group#enable_tf_lock_table
    END
}

variable "ec2_work_count" {
  default = 1
  type    = number

  description = <<-END
    EC2 Worker Count 
    https://go.s3d.club/site-group#ec2_work_count
    END
}

variable "name_prefix" {
  default = null
  type    = string

  description = <<-END
    AWS Region
    https://go.s3d.club/site-group#aws_region
    END
}

variable "region" {
  default = "us-east-1"
  type    = string

  description = <<-END
    AWS Region
    https://go.s3d.club/site-group#aws_region
    END
}

variable "tags" {
  default = {}
  type    = map(string)

  description = <<-END
    AWS Region
    https://go.s3d.club/site-group#tags
    END
}

variable "vpc_id" {
  type = string

  description = <<-END
    VPC ID
    https://go.s3d.club/site-group#vpc_id
    END
}
