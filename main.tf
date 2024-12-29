provider "azurerm" {
  features {}
}

module "webapp" {
  source                = "./modules/webapp"
  resource_group_name   = var.resource_group_name
  location              = var.location
  app_service_plan_name = var.app_service_plan_name
  web_app_name          = var.web_app_name
  sku_tier              = var.sku_tier
  sku_size              = var.sku_size
  sku_capacity          = var.sku_capacity
}
