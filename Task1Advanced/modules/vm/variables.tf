variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "cores" {
  description = "Number of CPU cores"
  type        = number
}

variable "memory" {
  description = "Amount of RAM in GB"
  type        = number
}

variable "disk_size" {
  description = "Size of the attached disk in GB"
  type        = number
}

variable "subnet_id" {
  description = "Subnet ID where VM will be created"
  type        = string
}

variable "ssh_key" {
  description = "SSH public key for VM access"
  type        = string
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "image_id" {
  description = "Boot disk image ID"
  type        = string
  default     = "fd81hgrcv6lsnkremf32" # Ubuntu 22.04
}

variable "platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v2"
}