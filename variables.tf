
variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["staging", "production"], var.environment)
    error_message = "Environment must be staging or production."
  }
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the application resource group"
  type        = string
  default     = "terra_infra"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.10.0.0/16"]
}

variable "subnet_address_prefix" {
  type    = string
  default = "10.10.1.0/24"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "admin_username" {
  type    = string
  default = "azureadmin"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for Linux VM"
  type        = string
  sensitive   = true
}
variable "vm_count" {
  description = "Number of virtual machines"
  type        = number
  default     = 2
}