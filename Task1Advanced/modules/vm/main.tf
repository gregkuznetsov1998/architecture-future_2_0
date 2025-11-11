resource "yandex_compute_instance" "vm" {
  name        = var.vm_name
  platform_id = var.platform_id
  zone        = var.zone

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  secondary_disk {
    disk_id = yandex_compute_disk.additional_disk.id
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_key}"
  }
}

resource "yandex_compute_disk" "additional_disk" {
  name     = "${var.vm_name}-disk"
  type     = "network-hdd"
  zone     = var.zone
  size     = var.disk_size
}