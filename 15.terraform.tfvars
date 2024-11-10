aws_region           = "us-west-1"
vpc_cidr             = "10.37.0.0/16"
vpc_name             = "Ansible-Vpc"
key_name             = "samfolbs-Key"
public_subnet_cidrs  = ["10.37.1.0/24", "10.37.2.0/24", "10.37.3.0/24"]    #List
private_subnet_cidrs = ["10.37.10.0/24", "10.37.20.0/24", "10.37.30.0/24"] #List
azs                  = ["us-west-1a", "us-west-1b", "us-west-1c"]          #List
environment          = "production"
instance_type = {
  development = "t2.small"
  testing     = "t2.small"
  production  = "t2.small"
}
amis = {
  us-east-1 = "ami-0149b2da6ceec4bb0" # Canonical, Ubuntu, 20.04 LTS, amd64 focal image
  us-east-2 = "ami-0430580de6244e02e" # Canonical, Ubuntu, 20.04 LTS, amd64 focal image
}
projid    = "RADIO-123"
imagename = "ami-0149b2da6ceec4bb0"
