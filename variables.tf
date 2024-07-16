variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string

}

variable "location" {
  description = "The Azure region where the virtual machine should be created"
  type        = string
  default = "West Europe"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string

  validation {
    condition     = contains(["Standard_D2s_v3", "Standard_D4s_v3", "Standard_E2s_v3"], var.vm_size)
    error_message = "The vm_size must be one of: Standard_D2s_v3, Standard_D4s_v3, Standard_E2s_v3."
  }
}

variable "admin_username" {
  description = "The admin username of the virtual machine"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the virtual machine"
  type        = map(string)
}