data "ibm_compute_ssh_key" "existing" {
  label = var.existing_ssh_key
}

data "ibm_network_vlan" "public" {
  number = var.public_vlan_number
}

data "ibm_network_vlan" "private" {
  number = var.private_vlan_number
}