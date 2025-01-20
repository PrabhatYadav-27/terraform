# provider "aws" {
# 	region = "us-east-1"
# }

# resource "aws_route53_zone" "example_zone"{
# 	name = "example.com"
# }

# resource "aws_route53_record" "example_record" {
# 	zone_id = aws_route53_zone.example_zone.zone_id
# 	name    = "www"
# 	type    = "A"
# 	ttl     = "300"
# 	records =["your_ip_address"]
# }
