resource "aws_instance" "web1" {
  ami = "${var.ami_image}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
 }
