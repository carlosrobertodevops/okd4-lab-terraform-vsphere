variable "vsphere_server" {
  description = "vSphere server"
  type        = string
  default     = ""
}

variable "vsphere_user" {
  description = "vSphere username"
  type        = string
  default     = ""
}

variable "vsphere_password" {
  description = "vSphere password"
  type        = string
  default     = ""
  sensitive   = true
}

variable "datacenter" {
  description = "vSphere data center"
  type        = string
  default     = ""
}

variable "cluster" {
  description = "vSphere cluster"
  type        = string
  default     = ""
}

variable "datastore" {
  description = "vSphere datastore"
  type        = string
  default     = ""
}

variable "network_name" {
  description = "vSphere network name"
  type        = string
  default     = ""
}

variable "fedora_name" {
  description = "Fedora COREOS name (ie: image_path)"
  type        = string
  default     = ""
}

variable "net_adapter_type" {
  type        = string
  default     = ""
}

variable "guest_id" {
  type        = string
  default     = ""
}

variable "custom_iso_so_path" {
  type        = string
  default     = ""
}

variable "name_new_vm" {
  description = "Input a name for Virtual Machine Ex. new_vm"
  type        = string
  default     = ""
}

variable "vm_count" {
  description = "Number of instaces"
  type        = string
  default     = ""
}

variable "disk_size" {
  description = "Amount of Disk, Ex. 50, 60, 70 OBS: The amount may not be less than 50"
  type        = string
  default     = ""
}

variable "num_cpus" {
  description = "Amount of vCPU's, Ex. 2"
  type        = string
  default     = ""
}

variable "memory" {
  description = "Amount of Memory, Ex. 1024, 2048, 3073, 4096"
  type        = string
  default     = ""
}