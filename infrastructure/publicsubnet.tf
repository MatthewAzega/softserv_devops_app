#PUBLIC SUBNET
resource "aws_subnet" "public-subnet" {

  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    name = "public-subnet"
  }
}

resource "aws_route_table_association" "public_route_table_asocit" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.route_table.id

}

resource "aws_subnet" "public-subnet2" {

  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    name = "public-subnet2"
  }
}

resource "aws_route_table_association" "public_route_table_asocit2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.route_table.id

}