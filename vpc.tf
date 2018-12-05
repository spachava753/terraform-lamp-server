resource "aws_vpc" "spdev1" {
  cidr_block = "${var.vpc_cidr_block}"
  tags {
    Name = "spdev1"
    Environment = "dev"
  }
}
