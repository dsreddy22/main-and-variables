variable "resource_group" {
  description = "The name of the resource group in which to create the app service and web apps."
  default = "avrctestwebapp"
}

variable "location" {
  description = "The location/region where the web apps to be created."
  default = "centralus"
}

variable "app_service_plan_id" {
  description = "ID of app service plan"
  default = ""
}

variable "dotnet_framework_version" {
  description = "dot net framework version for site_config"
  default = "v4.0"
}

variable "scmtype" {
  description = "scm type for site_config"
  default = "LocalGit"
}

variable "repourl" {
  description = "URL of the Git repository for this App Service"
  default = ""
}

variable "branch" {
  description = "Branch name of the Git repository for this App Service"
  default = ""
}

variable "siteuser" {
  description = "The username which can be used to publish to this App Service"
  default = ""
}

variable "sitesecret" {
  description = "The secret which can be used to publish to this App Service"
  default = ""
}

variable "connect_string_name" {
  description = "Name of the connection string"
  default = "Database"
}
variable "connect_string_type" {
  description = "Type of the connection string"
  default = "SQLServer"
}
variable "connect_string_value" {
  description = "Connection string value"
  default = ""
}
variable "connect_string_user" {
  description = "Connection String User"
  default = ""
}
variable "connect_string_secret" {
  description = "Connection String secret"
  default = ""
}

