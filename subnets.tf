resource "aws_subnet" "spdev1-public-2a" {
  vpc_id = "${aws_vpc.spdev1.id}"
  cidr_block = "10.10.0.0/23"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
  
  tags {
    Name = "spdev1-public-2a"
  }
}

resource "aws_subnet" "spdev1-private-2a" {
  vpc_id = "${aws_vpc.spdev1.id}"
  cidr_block = "10.10.2.0/23"
  availability_zone = "us-east-2a"
  
  tags {
    Name = "spdev1-private-2a"
  }
}

resource "aws_subnet" "spdev1-public-2b" {
  vpc_id = "${aws_vpc.spdev1.id}"
  cidr_block = "10.10.4.0/23"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2b"
  
  tags {
    Name = "spdev1-public-2b"
  }
}

resource "aws_subnet" "spdev1-private-2b" {
  vpc_id = "${aws_vpc.spdev1.id}"
  cidr_block = "10.10.6.0/23"
  availability_zone = "us-east-2b"
  
  tags {
    Name = "spdev1-private-2b"
  }
}