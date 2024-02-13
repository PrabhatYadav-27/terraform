provider "aws" {
    region = "us-east-1"
  
}

variable "ami"{
    description =  "this is ami for the instance"
}
variable "instance_type" {
    description = " thi si the instance type"
  
}

resource "aws_instance" "workspace" {
    ami =var.ami
    instance_type =var.instance_type 
    
  
}

#terraform workspace new dev == create new workspace  
#terraform workspace select dev == to move to workspace