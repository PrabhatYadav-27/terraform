provider "aws" {
    region = "us-east-1" #ths is use to write for region

}


resource "aws_instance" "app-server" {
    ami = "image id" 
    instance_type = "t2.micro"
    subnet_id = " subnet_id" #subnet is of ec2 instance
 }