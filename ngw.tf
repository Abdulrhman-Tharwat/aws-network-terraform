resource "aws_eip" "ip_nat1" {


}

resource "aws_eip" "ip_nat2" {


}

resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.ip_nat1.id
  subnet_id     = aws_subnet.public1.id
}


resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.ip_nat2.id
  subnet_id     = aws_subnet.public2.id
}