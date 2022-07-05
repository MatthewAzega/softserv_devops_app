#internet access gateway for public subnet
resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.dev-vpc.id
}

#route_table for public subnet
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0" #routes from route_table to gateway
    gateway_id = aws_internet_gateway.gateway.id
  }
}

