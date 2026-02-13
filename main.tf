resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_instance" "example" {
  ami           = "ami-0c1fe732b5494dc14"
  instance_type = "t2.micro"

  tags = {
    Name        = "cicd-project"
    Environment = "dev"
  }
}

resource "aws_s3_bucket" "cicd_bucket" {
  bucket = "${var.bucket_prefix}-${random_id.bucket_suffix.hex}"

  tags = {
    Name        = "cicd-project"
    Environment = "dev"
  }
}