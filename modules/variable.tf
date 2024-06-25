variable "resourcegroupname" {
  description = "The name of the resource group where resources will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}

variable "keyvaultname" {
  description = "The name of the Azure Key Vault to create."
  type        = string
}

variable "tenantid" {
  description = "The Azure Active Directory tenant ID."
  type        = string
}

variable "objectid" {
  description = "The object ID of the Azure AD principal to grant access."
  type        = string
}
variable "skuname" {
    description = "The name of the Key Vault SKU to create."
    type = string
  
}
