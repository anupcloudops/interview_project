resource "azurerm_resource_group" "rgb" {
    count = 3
    name = "rg-${count.index}"
    location = "east us"
tags = {
    environment = "dev"
    managed_by = "Anup"
}
lifecycle {
  ignore_changes = [ tags ]
}
}