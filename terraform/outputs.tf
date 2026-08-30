output "ec2_instance_id" {
  description = "ID of the web EC2 instance"
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "Public IP address of the web EC2 instance"
  value       = aws_instance.web.public_ip
}

output "web_url" {
  description = "Public URL of the web application"
  value       = "http://${aws_instance.web.public_ip}"
}

output "s3_bucket_name" {
  description = "Name of the project S3 bucket"
  value       = aws_s3_bucket.project.bucket
}

output "ssh_command" {
  description = "Example SSH command for the EC2 instance"
  value       = "ssh -i <path-to-private-key> ec2-user@${aws_instance.web.public_ip}"
}