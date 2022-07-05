#PRIVATE SUBNET
resource "aws_subnet" "private-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    name = "private-subnet"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    name = "private-subnet2"
  }
}

