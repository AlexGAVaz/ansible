output "vm_instance_name_ip_click_house" {
  value = {
    for idx, instance in yandex_compute_instance.db_click_instance : idx => instance.network_interface[0].nat_ip_address
  }
}

output "vm_instance_name_ip_vector" {
  value = {
    for idx, instance in yandex_compute_instance.agent_vector_instance : idx => instance.network_interface[0].nat_ip_address
  }
}

output "vm_instance_name_ip_light_house" {
  value = {
    for idx, instance in yandex_compute_instance.dash_light_instance : idx => instance.network_interface[0].nat_ip_address
  }
}
