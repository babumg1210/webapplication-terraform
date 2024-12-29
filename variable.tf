variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "WPM-RG"
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "Australia East"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "wpmappserviceplan"
}

variable "web_app_name" {
  description = "The name of the Web App"
  type        = string
  default     = "wpmappservice"
}


