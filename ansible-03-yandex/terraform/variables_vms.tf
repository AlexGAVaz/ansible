###vms resources vars
variable "vms_resources" {
  type = map(object({
    preemptible   = bool   # приреваемая true / непрерываемая false
    nat           = bool   # внешний IP true / только локальная сеть false
    core_fraction = number # % выделеного CPU 
    vm_name       = string
    platform_id   = string
    cores         = number
    memory        = number
    count_vms     = number
    size          = number
    image         = string
  }))
  default = {
    click_house_resources = {
      preemptible   = false
      nat           = true
      core_fraction = 20
      vm_name       = "clickhouse"
      platform_id   = "standard-v1"
      cores         = 2
      memory        = 2
      count_vms     = 1
      size          = 20
      image         = "centos-7"
    }
    vector_resources = {
      preemptible   = false
      nat           = true
      core_fraction = 20
      vm_name       = "vector"
      platform_id   = "standard-v1"
      cores         = 2
      memory        = 2
      count_vms     = 1
      size          = 20
      image         = "centos-7"
    }
    light_house_resources = {
      preemptible   = false
      nat           = true
      core_fraction = 20
      vm_name       = "lighthouse"
      platform_id   = "standard-v1"
      cores         = 2
      memory        = 2
      count_vms     = 1
      size          = 20
      image         = "ubuntu-2204-lts"
    }
  }
}

###ssh vars
variable "vm_username" {
  type        = string
  default     = "gavadmin"
  description = "Username for the VM"
}
