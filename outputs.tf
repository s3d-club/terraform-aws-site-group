output "domain" {
  value = var.domain

  description = <<-EOT
    A domain.
    EOT
}

output "ec2" {
  value = [for v in module.ec2_work : {
    user     = v.user
    dns_name = v.dns_name
    ec2_dns  = v.ec2_dns
  }]

  description = <<-EOT
    An EC2 Instance.
    EOT
}

output "ec2_key_name" {
  value = var.ec2_key_name

  description = <<-EOT
    A EC2 Key Name.
    EOT
}

output "ecr" {
  value = module.ecr

  description = <<-EOT
    The ECR module.
    EOT
}

output "tags" {
  value = local.tags

  description = <<-EOT
    The tags.
    EOT
}
