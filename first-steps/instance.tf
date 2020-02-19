provider "aws" {
  access_key = "AKIAIYXISACA6DG34ZIQ"
  secret_key = "WWllm3gsWG16/OkZet7us9zF7QYRvOzUfnJifDxm"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}
