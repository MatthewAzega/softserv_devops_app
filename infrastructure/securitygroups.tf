resource "aws_security_group" "private-allow_ssh" {
  name        = "allow ssh traffic"
  description = "allow ssh inbound traffic"
  vpc_id      = aws_vpc.dev-vpc.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
  tags = {
    "name" = "allow_ssh"
  }
}