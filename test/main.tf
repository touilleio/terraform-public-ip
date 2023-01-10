terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
}

module "myip1" {
  source = "./.."
}

output "myip1_ip" {
  value = module.myip1.ip
}

output "myip1_cidr" {
  value = module.myip1.cidr
}

module "myip2" {
  source  = "./.."
  netmask = "24"
}

output "myip2_cidr" {
  value = module.myip2.cidr
}
