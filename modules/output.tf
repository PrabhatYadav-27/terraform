#to show the output of the required information

output "public_ip" {
    value =  aws_instance.example-name.public_ip
  
}