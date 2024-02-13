provider "aws" {
    region = "us-east-1" #ths is use to write for region

}


#how to use moudles

module "ec2instance" {
  source = "./module/"

  #we can pass the value like .tfvars file
  ami_value= "image_id" 
  instance_type ="instance_type"
  subent_id = "subnet_id"
}

#another way or hard way to provide every details here
resource "aws_instance" "app-server" {
    ami = "image id" 
    instance_type = "t2.micro"
    subnet_id = " subnet_id" #subnet is of ec2 instance
 }