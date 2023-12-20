resource "aws_s3_bucket" "my-bucket-test" {
  bucket = "${random_pet.bucket.id}-${Environment}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}