terraform {
  backend "azurerm" {
    resource_group_name   = "ecommerceResourceGroup"
    storage_account_name  = "ecommercestorage1210"
    container_name        = "webapp"
    key                   = "terraform.tfstate"
    #subscription_id       = "ae1b5111-4f4f-477d-b4d4-419fd8cbc789"
    #tenant_id             = "c7de2ec6-e7a9-41e7-99e8-e6ff52f3a8d0"
    #client_id             = "419aeb43-db49-4a70-8239-868d17b24283"   # Replace with your actual client ID
    #client_secret         = "IWs8Q~peHExZd3LbMfGfut0cpj9p8Fgltt-vbcKO"  # Replace with your actual client secret
  }
}
