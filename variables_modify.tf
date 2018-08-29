variable "resource_group" {
  description = "The name of the resource group in which to create the app service and web apps."
  default = "avrctestwebapp"
}

variable "location" {
  description = "The location/region where the web apps to be created."
  default = "centralus"
}
