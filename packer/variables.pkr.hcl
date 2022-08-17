variable "vsphere_server" {
  type    = string
  default = ""
}

variable "vsphere_user" {
  type    = string
  default = ""
}

variable "ssh_password" {
  type    = string
  default = ""
}

variable "ssh_username" {
  type    = string
  default = ""
}

variable "vsphere_password" {
  type    = string
  default = ""
}

variable "datacenter" {
  type    = string
  default = ""
}

variable "cluster" {
  type    = string
  default = ""
}

variable "datastore" {
  type    = string
  default = ""
}

variable "network_name" {
  type    = string
  default = ""
}

variable "guest_id" {
  type    = string
  default = ""
}

variable "custom_iso_path" {
  type    = string
  default = ""
}

variable "name_new_vm" {
  type    = string
  default = ""
}

variable vm_nm {
  type = string
  default = ""
}

variable "disk_controller_type" {
  type = string
  default = ""
}

variable "vm_count" {
  type    = string
  default = ""
}

variable "disk_size" {
  type    = string
  default = ""
}

variable "num_cpus" {
  type    = string
  default = ""
}

variable "vm_name" {
   type    = string
  default = ""
}

variable "memory" {
  type    = string
  default = ""
}

variable "net_adapter_type" {
  type    = string
  default = ""
}

variable "fedora_name" {
  type    = string
  default = ""
}

variable "guest_os_type" {
  type    = string
  default = ""
}

variable "cpu_count" {
  type    = string
  default = ""
}

variable "network_card" {
  type    = string
  default = ""
}