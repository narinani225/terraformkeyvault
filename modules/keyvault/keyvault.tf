provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resourcegroupname
  location = var.location
}

resource "azurerm_key_vault" "keyvault" {
  name                = var.keyvaultname
  location            = var.location
  resource_group_name = var.resourcegroupname
  tenant_id           = var.tenantid
  sku_name            = var.skuname

  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }

  access_policy {
    tenant_id = var.tenantid
    object_id = var.objectid

    key_permissions = [
      "get",
      "list",
      "set",
      "delete",
      "backup",
      "restore"
    ]

    secret_permissions = [
      "get",
      "list",
      "set",
      "delete"
    ]

    storage_permissions = [
      "get",
      "list",
      "update",
      "delete"
    ]
  }
}

