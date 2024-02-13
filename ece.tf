provider "aws" {
    region = "us-east-1" #ths is use to write for region

}


resource "aws_instance" "app-server" {
    ami = "ami-0e731c8a588258d0d" 
    instance_type = "t2.micro"
    subnet_id = " subnet-0975257dc36fa68cc" #subnet is of ec2 instance
 }