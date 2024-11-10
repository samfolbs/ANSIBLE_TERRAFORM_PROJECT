output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_arn" {
  value = aws_vpc.main.arn
}

# output "subnet1_id" {
#   value = aws_subnet.subnet1-public.id
# }


output "sg_id" {
  value = aws_security_group.allow_all.id
}
