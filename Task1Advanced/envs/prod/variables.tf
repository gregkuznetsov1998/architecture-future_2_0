variable "yc_token" {
  description = "Yandex Cloud OAuth token"
  type        = string
  sensitive   = true
}

variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "yc_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
}

variable "vm_name" {
  description = "VM name"
  type        = string
}

variable "cores" {
  description = "Number of CPU cores"
  type        = number
}

variable "memory" {
  description = "RAM size in GB"
  type        = number
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "ssh_key" {
  description = "SSH public key"
  type        = string
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = "ru-central1-a"
}