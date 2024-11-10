resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name              = var.vpc_name
    Owner             = "Samfolbs"
    environment       = local.new_environment
    Terraform-Managed = "Yes"
    ProjectID         = local.projid
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name              = "${var.vpc_name}-IGW"
    Terraform-Managed = "Yes"
    Env               = local.new_environment
    ProjectID         = local.projid
  }
}