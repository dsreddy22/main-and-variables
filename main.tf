resource "random_id" "server" {
  keepers = {
    azi_id = 1
  }

  byte_length = 6
}
resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

resource "azurerm_app_service_plan" "appserviceplan1" {
  name                = "${var.app_service_plan}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"

  sku {
    tier = "{$var.app_service_plan_tier}"
    size = "{$var.app_service_plan_size}"
  }
}

resource "azurerm_app_service" "appservice1" {
  name                = "${var.web_app1}-${random_id.server.hex}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${azurerm_app_service_plan.appserviceplan1.id}"
}

resource "azurerm_app_service" "appservice2" {
  name = "${var.web_app2}-${random_id.server.hex}"
  location = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${azurerm_app_service_plan.appserviceplan1.id}"
}

resource "azurerm_app_service" "appservice3" {
  name = "${var.web_app3}-${random_id.server.hex}"
  location = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${azurerm_app_service_plan.appserviceplan1.id}"
}

resource "azurerm_app_service_custom_hostname_binding" "custom1" {
  hostname            = "${var.web_app1_host_binding_name}"
  app_service_name    = "${azurerm_app_service.appservice1.name}"
  resource_group_name = "${var.resource_group}"
}

resource "azurerm_app_service_custom_hostname_binding" "custom2" {
  hostname            = "${var.web_app2_host_binding_name}"
  app_service_name    = "${azurerm_app_service.appservice2.name}"
  resource_group_name = "${var.resource_group}"
}

resource "azurerm_app_service_custom_hostname_binding" "custom3" {
  hostname            = "${var.web_app3_host_binding_name}"
  app_service_name    = "${azurerm_app_service.appservice3.name}"
  resource_group_name = "${var.resource_group}"
}