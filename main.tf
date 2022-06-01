provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "main_s3_bucket" {
  bucket = "my-tf-test-bucket-cc2022-onsite-34"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}