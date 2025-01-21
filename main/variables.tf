variable "role_arn" {
  type        = string
  description = "The ARN of the IAM Role"
}

variable "aws_vpc_name" {
  type    = string
  default = "fiap-x-vpc"
}

variable "aws_igw_name" {
  type    = string
  default = "fiap-x-igw"
}

variable "mongodb_connection_string" {
  type        = string
  description = "The MongoDB connnection string"
}

variable "aws_access_key_id" {
  type        = string
  description = "The AWS Access Key ID"
}

variable "aws_secret_access_key" {
  type        = string
  description = "The AWS Secret Access Key"
}

variable "aws_session_token" {
  type        = string
  description = "The AWS Session Token"
}

variable "sqs_queue_url" {
  type        = string
  description = "The SQS Queue URL"
}
