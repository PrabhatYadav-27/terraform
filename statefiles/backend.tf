terraform {
  backend "s3" {
    bucket = "bucket_name"
    key = "path/to/the/key/prefixoffoldertostore"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
    
  }
}


/*
This will store the state file in s3 bucket instead of local machine
every time any chances made to terraform file it will be updated everytime

*/


