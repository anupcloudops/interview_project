terraform{
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.78.0"
        }
    }
    backend "azurerm" {
        resource_group_name = "resttest"
        storage_account_name = "regtrwser"
        container_name = "rtsrs"
        key = "terraform.tfstate"
      
    }
}
provider "azurerm"{
    features {}
}