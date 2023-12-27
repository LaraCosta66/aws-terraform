resource "aws_s3_bucket" "my-bucket-test" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = {
    Name        = "My bucket"
    Service = "Curso Terraform"
    Environment = var.environment
  }
}