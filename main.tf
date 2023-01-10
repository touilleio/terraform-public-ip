#

data "http" "public_ip" {
  url = var.public_ip_service
}

locals {
  public_cidr = "${chomp(data.http.public_ip.body)}/${var.netmask}"
  public_ip   = chomp(data.http.public_ip.body)
}
