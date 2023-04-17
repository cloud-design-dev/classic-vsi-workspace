variable "datacenter" {
  description = "Dc for the instance"
  default     = "dal10"
}

variable "existing_ssh_key" {
  description = "Name of the existing SSH key"
  type        = string
  default     = "rt-andromeda-galaxy-key"
}

variable "machine_type" {
  description = "Machine type to deploy the warpspeed virtual instance"
  type        = string
  default     = "BL2_2X8X100"
}

variable "os_reference_code" {
  description = "OS reference code to deploy the warpspeed virtual instance"
  type        = string
  default     = "UBUNTU_20_64"
}

variable "domain" {
  description = "Domain for the virtual instance"
  type        = string
  default     = "ryantiffany.dev"
}

variable "owner" {
  description = "Owner of the virtual instance"
  type        = string
  default     = ""
}

variable "public_vlan" {
  description = "Public VLAN name where instance will be deployed."
  type        = string
  default     = "public-dal10-vlan"
}

variable "private_vlan" {
  description = "Private VLAN name to deploy the warpspeed virtual instance"
  default     = "private-dal10-vlan"
}	
