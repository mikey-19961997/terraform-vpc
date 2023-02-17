resource "aws_security_group" "my-sg" {
  name        = "mikey-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      =  module.vpc.vpc_id

  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_details.cidr_block]
  }
}