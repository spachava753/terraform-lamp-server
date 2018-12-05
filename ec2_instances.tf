resource "aws_instance" "spdev1-lamp-server" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.spdev1-private-2a.id}"
  key_name = "${var.instance_key_pair}"
  security_groups = ["${aws_security_group.ssh-access.id}", "${aws_security_group.http-access.id}"]

  tags {
    Name = "spdev1-lamp-server"
  }

}

resource "aws_instance" "spdev1-bastion" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.spdev1-public-2a.id}"
  key_name = "${var.instance_key_pair}"
  security_groups = ["${aws_security_group.ssh-access.id}"]

  tags {
    Name = "spdev1-bastion"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}