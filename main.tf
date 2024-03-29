locals {
  prefix = random_string.prefix.result
  tags = [
    "project:${local.prefix}",
    "owner:${var.owner}",
    "datacenter:${var.datacenter}",
    "provider:ibm"
  ]
}

resource "random_string" "prefix" {
  length  = 4
  special = false
  upper   = false
}

resource "ibm_compute_vm_instance" "vsi" {
  hostname                 = local.prefix
  domain                   = var.domain
  os_reference_code        = var.os_reference_code
  datacenter               = var.datacenter
  network_speed            = 1000
  hourly_billing           = true
  local_disk               = true
  private_network_only     = false
  flavor_key_name          = "BL2_2X8X100"
  tags                     = local.tags
  public_vlan_id           = data.ibm_network_vlan.public.id
  private_vlan_id          = data.ibm_network_vlan.private.id
  dedicated_acct_host_only = false
  ipv6_enabled             = true
  ssh_key_ids              = [data.ibm_compute_ssh_key.existing.id]
}

output "instance_id" {
  value = ibm_compute_vm_instance.vsi.id
}
