variable "aws_region" {
  description = "AWS region used for Coding Challenge 3"
  type        = string
  default     = "us-east-2"
}

variable "project_name" {
  description = "Project name used to prefix AWS resources"
  type        = string
  default     = "coding-challenge-3"
}

variable "key_name" {
  description = "Existing EC2 key pair name used for SSH access"
  type        = string
}