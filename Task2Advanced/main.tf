provider "yandex" {
  zone = "ru-central1-a"
}

resource "yandex_compute_instance" "vm" {
  name        = "terraform-vm"
  platform_id = "standard-v3"
  
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd87vu2nnp5h" # Ubuntu 20.04
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet.id
    nat       = true
  }
}

resource "yandex_vpc_network" "network" {
  name = "terraform-network"
}

resource "yandex_vpc_subnet" "subnet" {
  name           = "terraform-subnet"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}