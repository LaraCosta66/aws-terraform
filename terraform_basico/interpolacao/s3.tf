resource "aws_s3_bucket" "my-bucket-test" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "my-bucket-test" {
  bucket = aws_s3_bucket.my-bucket-test.bucket
  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5(local.ip_filepath)
}

resource "aws_s3_bucket" "manual" {
  bucket = "mybucketawslaracosta"
  tags = {
    Created   = "03-01-2024"
    Imported  = "03-01-2024"
    ManagedBy = "Terraform"
  }
}
