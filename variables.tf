variable "resource_group" {
  description = "The name of the resource group in which to create the app service and web apps."
}

variable "location" {
  description = "The location/region where the web apps to be created."
}

variable "app_service_plan" {
  description = "The name of the app service"
}

variable "web_app1" {
  description = "Naming convention for web app1"
}

variable "web_app2" {
  description = "Naming convention for web app2"
}

variable "web_app3" {
  description = "Naming convention for web app3"
}

variable "app_service_plan_tier" {
  description = "tier of the app service plan"
}

variable "app_service_plan_size" {
  description = "size of the app service plan"
}

variable "web_app1_host_binding_name" {
  description = "url to bind with web app1"
}

variable "web_app2_host_binding_name" {
  description = "url to bind with web app2"
}

variable "web_app3_host_binding_name" {
  description = "url to bind with web app3"
}