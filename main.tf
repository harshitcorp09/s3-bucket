provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "importtestbuc"

  # Optional: Versioning configuration
  versioning {
    enabled = true
  }

  # Optional: Public access block configuration
  acl = "private"

  tags = {
    Name        = "importtestbuc"
    Environment = "Development"
    Owner       = "Harshit Dixit"
  }
}
