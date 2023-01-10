#

output "cidr" {
  value = cidrsubnet(local.public_cidr, 0, 0)
}

output "ip" {
  value = local.public_ip
}
