# ClickHouse
data "yandex_compute_image" "vms_image_db_click" {
  family = var.vms_resources.click_house_resources.image
}

resource "yandex_compute_instance" "db_click_instance" {
  name        = "${var.vms_resources.click_house_resources.vm_name}-${count.index + 1}"
  platform_id = var.vms_resources.click_house_resources.platform_id
  count       = var.vms_resources.click_house_resources.count_vms
  resources {
    cores         = var.vms_resources.click_house_resources.cores
    memory        = var.vms_resources.click_house_resources.memory
    core_fraction = var.vms_resources.click_house_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.vms_image_db_click.image_id
      size     = var.vms_resources.click_house_resources.size
    }
  }
  scheduling_policy {
    preemptible = var.vms_resources.click_house_resources.preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop2.id
    nat       = var.vms_resources.click_house_resources.nat
  }
  metadata = {
    serial-port-enable = local.vms_metadata.serial-port-enable
    ssh-keys           = local.vms_metadata.ssh-keys
  }
}

# Vector
data "yandex_compute_image" "vms_image_agent_vector" {
  family = var.vms_resources.vector_resources.image
}

resource "yandex_compute_instance" "agent_vector_instance" {
  name        = "${var.vms_resources.vector_resources.vm_name}-${count.index + 1}"
  platform_id = var.vms_resources.vector_resources.platform_id
  count       = var.vms_resources.vector_resources.count_vms
  resources {
    cores         = var.vms_resources.vector_resources.cores
    memory        = var.vms_resources.vector_resources.memory
    core_fraction = var.vms_resources.vector_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.vms_image_agent_vector.image_id
      size     = var.vms_resources.vector_resources.size
    }
  }
  scheduling_policy {
    preemptible = var.vms_resources.vector_resources.preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop2.id
    nat       = var.vms_resources.vector_resources.nat
  }
  metadata = {
    serial-port-enable = local.vms_metadata.serial-port-enable
    ssh-keys           = local.vms_metadata.ssh-keys
  }
}

# LightHouse
data "yandex_compute_image" "vms_image_dash_light" {
  family = var.vms_resources.light_house_resources.image
}

resource "yandex_compute_instance" "dash_light_instance" {
  name        = "${var.vms_resources.light_house_resources.vm_name}-${count.index + 1}"
  platform_id = var.vms_resources.light_house_resources.platform_id
  count       = var.vms_resources.light_house_resources.count_vms
  resources {
    cores         = var.vms_resources.light_house_resources.cores
    memory        = var.vms_resources.light_house_resources.memory
    core_fraction = var.vms_resources.light_house_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.vms_image_dash_light.image_id
      size     = var.vms_resources.light_house_resources.size
    }
  }
  scheduling_policy {
    preemptible = var.vms_resources.light_house_resources.preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop2.id
    nat       = var.vms_resources.light_house_resources.nat
  }
  metadata = {
    serial-port-enable = local.vms_metadata.serial-port-enable
    ssh-keys           = local.vms_metadata.ssh-keys
  }
}
