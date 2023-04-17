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
  description = "Domain to deploy the warpspeed virtual instance"
  type        = string
  default     = "ryantiffany.dev"
}

variable "owner" {
  description = "Owner of the warpspeed virtual instance"
  type        = string
  default     = ""
}

variable "public_vlan_number" {
  description = "Public VLAN number to deploy the warpspeed virtual instance"
  type        = string
  default     = "1657"
}

variable "private_vlan_number" {
  description = "Private VLAN number to deploy the warpspeed virtual instance"
  default     = 1648
}

variable "iaas_classic_api_key" {
  description = "API key for the IBM Cloud account"
  type        = string
}

variable "iaas_classic_username" {
  description = "Username for the IBM Cloud account"
  type        = string
}