resource "aws_route_table" "spdev1-public-route" {
  vpc_id = "${aws_vpc.spdev1.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.spdev1-igw.id}"
  }

  tags {
    Name = "spdev1-public-route"
  }
}

resource "aws_route_table" "spdev1-private-route" {
  vpc_id = "${aws_vpc.spdev1.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.spdev1-ngw.id}"
  }

  tags {
    Name = "spdev1-public-route"
  }
}

resource "aws_route_table_association" "spdev1-public-route-association-a" {
  subnet_id = "${aws_subnet.spdev1-public-2a.id}"
  route_table_id = "${aws_route_table.spdev1-public-route.id}"
}

resource "aws_route_table_association" "spdev1-private-route-association-a" {
  subnet_id = "${aws_subnet.spdev1-private-2a.id}"
  route_table_id = "${aws_route_table.spdev1-private-route.id}"
}

resource "aws_route_table_association" "spdev1-public-route-association-b" {
  subnet_id = "${aws_subnet.spdev1-public-2b.id}"
  route_table_id = "${aws_route_table.spdev1-public-route.id}"
}

resource "aws_route_table_association" "spdev1-private-route-association-b" {
  subnet_id = "${aws_subnet.spdev1-private-2b.id}"
  route_table_id = "${aws_route_table.spdev1-private-route.id}"
}