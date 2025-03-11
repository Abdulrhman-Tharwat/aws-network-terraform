resource "aws_route_table" "route1" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route" "public-route" {
  route_table_id         = aws_route_table.route1.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.mygw.id
}

resource "aws_route_table_association" "assoc_public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.route1.id
}

resource "aws_route_table_association" "assoc_public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.route1.id
}







resource "aws_route_table" "private_route1" {
  vpc_id = aws_vpc.myvpc.id
}


resource "aws_route" "private-route" {
  route_table_id         = aws_route_table.private_route1.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat1.id
}

resource "aws_route" "private-route2" {
  route_table_id         = aws_route_table.private_route1.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat2.id
}

resource "aws_route_table_association" "assoc_private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private_route1.id
}

resource "aws_route_table_association" "assoc_private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private_route1.id
}