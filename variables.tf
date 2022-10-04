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
    an option to enable the EC2 instance.
    https://go.s3d.club/site-group#enable_ec2
    END
}

variable "enable_eks" {
  default = false
  type    = bool

  description = <<-END
    an option to enable EKS.
    https://go.s3d.club/tf/site-group#enable_eks
    END
}

variable "enable_k8_auth" {
  default = false
  type    = bool

  description = <<-END
    an option to enable the Kubernets Auth Map..
    https://go.s3d.club/tf/site-group#enable_k8_auth
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

variable "kms_key_arn" {
  default = null
  type    = string

  description = <<-END
    a KMS key ARN.
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

variable "region" {
  default = "us-east-1"
  type    = string

  description = <<-END
    an AWS region (i.e. `us-east-1`).
    https://go.s3d.club/tf/site-group#region
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
  type = string

  description = <<-END
    a VPC ID.
    https://go.s3d.club/tf/site-group#vpc_id
    END
}
