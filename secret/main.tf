provider "aws" {
    region = "us-east-1"
  
}


#for authentication

provider "vault" {
    address = "<ec2ip_address>:8200"
    skip_child_token = true

    auth_login {
      path = "auth/approle/login"
      
      parameters = {
        role_id ="<role_id>"
        secret_id = "<secret_id>"
      }
    }
  
}

# to read use data

data "vault_kv_secrets_list_v2" "name" {
    mount = "kv"
    name = "secret-name"
}

resource "aws_instance" "name" {
    ami ="image-id"
    instance_type = "t2.micro"

    tags = {
      secret= data.vault_kv_secrets_list_v2.name.data["username"]
    }
  
}