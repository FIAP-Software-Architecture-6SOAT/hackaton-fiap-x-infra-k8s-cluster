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

variable "mongodb_db_name" {
  type        = string
  description = "The MongoDB Database Name"
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

variable "aws_access_key_id_ses" {
  type        = string
  description = "The AWS Access Key ID for Amazon SES"
}

variable "aws_secret_access_key_ses" {
  type        = string
  description = "The AWS Secret Access Key for Amazon SES"
}

variable "queue_url" {
  type        = string
  description = "The SQS Queue URL"
}

variable "jwt_secret" {
  type        = string
  description = "The JWT Secret"
}

variable "bucket_videos_name" {
  type        = string
  description = "The S3 Bucket Name for Videos"
  default     = "videos-process"
}

variable "bucket_images_zip_name" {
  type        = string
  description = "The S3 Bucket Name for Images Zip"
  default     = "videos-images-zip"
}
