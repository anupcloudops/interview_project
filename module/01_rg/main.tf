resource "azurerm_resource_group" "rgblock" {
    for_each = var.rgs
    name = each.value.name
    location = each.value.location
    lifecycle {
      prevent_destroy = true
    }
}

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