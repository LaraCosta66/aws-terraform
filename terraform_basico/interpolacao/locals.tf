locals {
  ip_filepath = "ips.json"
  common_tags = {
    Name        = "My bucket"
    Service     = "Curso Terraform"
    Environment = var.environment
  }
}
