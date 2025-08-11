variable "name" {
  description = "Virtual network name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "address_space" {
  description = "Address space for VNet"
  type        = list(string)
}

variable "subnets" {
  description = "Subnets configuration"
  type = map(object({
    address_prefixes = list(string)
  }))
}

variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}