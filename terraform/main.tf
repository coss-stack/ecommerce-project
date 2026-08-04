resource "aws_instance" "jenkins" {

ami = "ami-00d2dbb426772b03a"

instance_type = var.instance_type

tags = {

Name = "Jenkins"

}

}
