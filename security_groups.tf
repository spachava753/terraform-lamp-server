resource "aws_security_group" "ssh-access" {
  name = "ssh-access"
  description = "All SSH traffic"
  vpc_id = "${aws_vpc.spdev1.id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "http-access" {
  name = "http-access"
  description = "All HTTP traffic"
  vpc_id = "${aws_vpc.spdev1.id}"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
