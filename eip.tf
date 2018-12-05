resource "aws_eip" "spdev1-eip" {
  vpc = true
  tags {
    Name = "spdev1-eip"
  }
}
