resource "aws_instance" "jenkins" {

ami = "ami-xxxxxxxx"

instance_type = var.instance_type

tags = {

Name = "Jenkins"

}

}
