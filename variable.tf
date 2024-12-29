variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "my-app-service-plan"
}

variable "web_app_name" {
  description = "The name of the Web App"
  type        = string
  default     = "my-web-app"
}

variable "sku_tier" {
  description = "The SKU tier for the App Service Plan"
  type        = string
  default     = "Basic"
}

variable "sku_size" {
  description = "The SKU size for the App Service Plan"
  type        = string
  default     = "B1"
}

variable "sku_capacity" {
  description = "The capacity for the App Service Plan"
  type        = number
  default     = 1
}
