#

variable "public_ip_service" {
  description = "Which what-is-my-ip service to use"
  type        = string
  default     = "https://myip.touille.io"
}

variable "netmask" {
  description = "Netmask to append to the public ip, useful when CIDR is needed"
  type        = string
  default     = "32"
}
