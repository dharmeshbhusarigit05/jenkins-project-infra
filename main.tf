provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 3
ami = "ami-0f918f7e67a3323f0"
instance_type = "t2.micro"
key_name = "amaz01"
vpc_security_group_ids = ["sg-035e8f2ebf8221b36"]
tags = {
Name = var.instance_names[count.index]
}
}
variable "instance_names" {
default = ["jenkins","AppServer-1","Monitoring server"]
}
