output "web_app_url" {
  value = azurerm_windows_web_app.this.default_site_hostname
}
