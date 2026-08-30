resource "aws_s3_bucket" "project" {
  bucket_prefix = "${var.project_name}-"

  tags = {
    Name    = "${var.project_name}-bucket"
    Project = var.project_name
  }
}

resource "aws_s3_bucket_versioning" "project" {
  bucket = aws_s3_bucket.project.id

  versioning_configuration {
    status = "Enabled"
  }
}