resource "aws_instance" "dev" {
  ami           = "ami-090793d48e56d862c"
  instance_type = "t3.micro"

  tags = {
    Name = "dev"
  }
}

resource "aws_security_group" "allow_tls" {

  name = "allow_tls"

  ingress {
    description = "TLS from VPC"
    from_port   = var.tls_ingress_port

    to_port = var.tls_ingress_port

    protocol = var.protocol

    cidr_blocks = var.cidr_block

  }



  ingress {

    description = "TLS from VPC"

    from_port = var.tls_ingress_port

    to_port = var.tls_ingress_port

    protocol = var.protocol

    cidr_blocks = var.cidr_block

  }



  tags = {

    Name = "manual"

  }

}