resource "random_id" "server" {
  keepers = {
    azi_id = 1
  }

  byte_length = 6
}
/*resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}*/

resource "azurerm_app_service" "webapp1" {
  name                = "web-app1-${random_id.server.hex}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${var.app_service_plan_id}"

  /*site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
}

source_control {
repo_url = "URL of the Git repository for this App Service"
branch   = "Branch name of the Git repository for this App Service."
}

site_credential {
username = "The username which can be used to publish to this App Service"
password = "some-password"
}

connection_string {
name  = "Database"
type  = "SQLServer"
value = "Server=some-server.somedomain.com;Integrated Security=false"
username = "user-name"
password = "some-password"
}*/

}
