source "vsphere-iso" "this" {
  vcenter_server    = var.vsphere_server
  username          = var.vsphere_user
  password          = var.vsphere_password
  datacenter        = var.datacenter
  cluster           = var.cluster

  insecure_connection  = true

  vm_name = var.vm_name
  
  guest_os_type = var.guest_os_type

  ssh_username = var.ssh_username
  ssh_password = var.ssh_password

  CPUs =             var.num_cpus
  RAM =              var.memory
  RAM_reserve_all = true

  disk_controller_type =  [var.disk_controller_type]

  datastore = var.datastore

  storage {
    disk_size = var.disk_size
    disk_thin_provisioned = true
  }

  iso_paths = [var.custom_iso_path]

  network_adapters {
    network =  var.network_name
    network_card = var.network_card
  }

  floppy_files = [
    "./preseed.cfg"
  ]

  boot_command = [
    "<enter><wait><f6><wait><esc><wait>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs>",
    "/install/vmlinuz",
    "initrd=/images/initramfs.img mitigations=auto,nosmt systemd.unified_cgroup_hierarchy=0 ",
    "coreos.liveiso=fedora-coreos-32.20200715.3.0 ignition.firstboot ignition.platform.id=metal ",
    "ip=192.168.60.242::192.168.60.1:255.255.255.0:::none ",
    "nameserver=192.168.60.240 coreos.inst.install_dev=/dev/sda ",
    "coreos.inst.image_url=http://192.168.60.240:8080/okd4/fcos.raw.xz ",
    "coreos.inst.ignition_url=http://192.168.60.240:8080/okd4/bootstrap.ign ",
    "<enter>"
  ]
}

build {
  sources  = [
    "source.vsphere-iso.this"
  ]

  provisioner "shell-local" {
    inline  = ["echo the address is: $PACKER_HTTP_ADDR and build name is: $PACKER_BUILD_NAME"]
  }
}
