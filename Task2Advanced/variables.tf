variable "yandex_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
  sensitive   = true
}

variable "yandex_folder_id" {
  description = "Yandex Folder ID"
  type        = string
  sensitive   = true
}

variable "yandex_token" {
  description = "Yandex OAuth token"
  type        = string
  sensitive   = true
}

variable "s3_access_key" {
  description = "S3 Access Key for remote state"
  type        = string
  sensitive   = true
}

variable "s3_secret_key" {
  description = "S3 Secret Key for remote state"
  type        = string
  sensitive   = true
}