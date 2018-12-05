resource "aws_internet_gateway" "spdev1-igw" {
  vpc_id = "${aws_vpc.spdev1.id}"

  tags {
    Name = "spdev1-igw"
  }
}
