#implementing without remote backend

provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "remote_backent" {
    instance_type = "t2.micro"
    ami ="image_id"
  
}

/* without remote ends here*/


#part of with remote backend
#how to create the s3

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "unique name of bucket"
    
}



#terraform lock= it will give permisiion one after other as two persn are working
 


#DYNAMODB LOGIC

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform_lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}