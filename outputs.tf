output "domain" {
  value = var.domain

  description = <<-END
    Domain
    https://go.s3d.com/aws-site-group#domain
    END
}

output "name_prefix" {
  value = local.name_prefix

  description = <<-END
    Name Prefix
    https://go.s3d.com/aws-site-group#name_prefix
    END
}

output "ec2" {
  value = [for v in module.ec2_work : {
    user     = v.user
    dns_name = v.dns_name
    ec2_dns  = v.ec2_dns
  }]

  description = <<-END
    EC2 Instance
    https://go.s3d.com/aws-site-group#ec2
    END
}

output "ec2_key_name" {
  value = local.ec2_key_name

  description = <<-END
    EC2 Key Name
    https://go.s3d.com/aws-site-group#ec2_key_name
    END
}

output "eks" {
  value = try(module.eks[0], null)

  description = <<-END
    EKS
    https://go.s3d.com/aws-site-group#eks
    END
}

output "tags" {
  value = local.tags

  description = <<-END
    Tags
    https://go.s3d.com/aws-site-group#tags
    END
}

output "key" {
  value = tls_private_key.this

  description = <<-END
    Key
    https://go.s3d.com/aws-site-group#key
    END
}

