variable "security_group_name" {

  description = "The name of the security group."

  type = string

  default = "allow_tls"

}

variable "security_group_description" {

  description = "The description of the security group."

  type = string

  default = "Allow TLS inbound traffic"

}

variable "cidr_block" {

  description = "The CIDR block to allow inbound traffic from."

  type = list(string)

  default = ["116.30.20.50/32"]

}

variable "tls_ingress_port" {

  description = " allow port for all traffic."

  type = number

}

variable "protocol" {

  description = "protocol for inbound traffic."

  type = string

  default = "tcp"

}