resource "aws_nat_gateway" "spdev1-ngw" {
  depends_on = ["aws_internet_gateway.spdev1-igw"]
  allocation_id = "${aws_eip.spdev1-eip.id}"
  subnet_id = "${aws_subnet.spdev1-public-2a.id}"
  
  tags {
    Name = "spdev1-ngw"
  }
}
