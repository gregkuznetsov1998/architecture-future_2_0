output "vm_id" {
  description = "ID of the created virtual machine"
  value       = yandex_compute_instance.vm.id
}

output "vm_name" {
  description = "Name of the created virtual machine"
  value       = yandex_compute_instance.vm.name
}

output "external_ip" {
  description = "External IP address of the VM"
  value       = yandex_compute_instance.vm.network_interface[0].nat_ip_address
}

output "internal_ip" {
  description = "Internal IP address of the VM"
  value       = yandex_compute_instance.vm.network_interface[0].ip_address
}

output "disk_id" {
  description = "ID of the attached disk"
  value       = yandex_compute_disk.additional_disk.id
}