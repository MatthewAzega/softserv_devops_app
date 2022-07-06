resource "aws_s3_bucket" "tfstate" {
bucket = "weatherapptf"
acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
