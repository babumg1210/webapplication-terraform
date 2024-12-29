resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "this" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  os_type             = "Windows"  # Optional, can be omitted if not needed

  sku {
    tier     = "PremiumV2"  # Specify the tier
    size     = "P1v2"       # Specify the size
    capacity = 1             # Specify the capacity
  }
}

resource "azurerm_windows_web_app" "this" {
  name                = var.web_app_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  service_plan_id     = azurerm_service_plan.this.id  # Correct reference 

  site_config {
    # You can add specific site configurations here if needed
    # For example, to set the default document:
    default_documents = ["index.html"]
  }

  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "14"  # Example setting for Node.js
  }
}
