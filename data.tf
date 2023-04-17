data "ibm_compute_ssh_key" "existing" {
  label = var.existing_ssh_key
}

data "ibm_network_vlan" "public" {
  name = var.public_vlan
}

data "ibm_network_vlan" "private" {
  name = var.private_vlan
}
