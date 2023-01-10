Terraform Public IP Modiule
====

Terraform module which compute the public IP address
from host where `terraform` is running

Very useful to allow restricted SSH inbound traffic to a small subnet, if not a `/32`.

# Usage example

```
module "myip" {
  source = "github.com/touilleio/terraform-public-ip"
  # Optional set a netmask, default to 32
  netmask = 24
}

resource "aws_security_group" "ssh_ingress" {
  name        = "ssh-from-myip"
  description = "ssh access from myip"
  vpc_id      = module.vpc.vpc_id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.myip.cidr]
  }
}
```

# Testing

```
cd ./test
terraform init
terraform plan
terraform apply
```
