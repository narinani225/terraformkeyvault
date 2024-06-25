
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}

module "azure_keyvault" {
  source = "./keyvault"

  resourcegroupname   = var.resourcegroupname
  location            = var.location
  keyvaultname        = var.keyvaultname
  tenantid            = var.tenantid
  objectid            = var.objectid
  skuname             = var.skuname
}
