variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Delete all objects in bucket upon destruction"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Resource tags"
}
