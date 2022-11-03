#AWS Instance

resource "aws_instance" "example" {
     ami = var.ami
     instance_type = var.instance_type
     availability_zone = var.availability_zone

lifecycle {
     ignore_changes = [ami]
     }
 }