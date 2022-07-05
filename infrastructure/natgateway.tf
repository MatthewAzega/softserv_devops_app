#elastic ip for NAT gateway
resource "aws_eip" "public_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.gateway]
}

#NAT GATEWAY (associate with private subnet)
resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = aws_eip.public_eip.id
  subnet_id     = aws_subnet.private-subnet.id
}

#route_table for private subnet
resource "aws_route_table" "priv_route_table" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0" #routes from route_table to nat
    gateway_id = aws_nat_gateway.nat-gateway.id
  }
}

resource "aws_route_table_association" "private_route_table_asocit" {
  subnet_id      = aws_subnet.private-subnet.id
  route_table_id = aws_route_table.priv_route_table.id

}