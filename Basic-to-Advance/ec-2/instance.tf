provider "aws" {
    region = ""
    access_key = ""
    secret_key = ""
  
}

resource "aws_instance" "instance-exp" {
    ami = "ami_id"
    instance_type = "type_of_instance"
    tags = {
      Name = "instance_name"
    }
  
}