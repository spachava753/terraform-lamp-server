resource "null_resource" "bootstrap-lamp-server" {
  connection {
    bastion_host = "${aws_instance.spdev1-bastion.public_ip}"
    bastion_private_key = "${file("/home/shashank/.ssh/spdev1.pem")}"
    host = "${aws_instance.spdev1-lamp-server.private_ip}"
    type = "ssh"
    user = "ubuntu"
    private_key = "${file("/home/shashank/.ssh/spdev1.pem")}"
  }
  
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y apache2",
      "sudo apt install -y mysql-server",
      "sudo apt install -y sudo apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php",
      "sudo systemctl restart apache2",
      "curl http://localhost/",
    ]
  }
}
