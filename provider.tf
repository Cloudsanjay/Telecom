terraform {
  required_providers {
    azurerm = {
    source  = "hashicorp/azurerm"
    version = "4.27.0"
  }
}
}

provider "azurerm" {
    features{}
    subscription_id = "a9dcdbff-16a5-4c50-b433-974c8a920b84"
}

variable "telcom" {
  default = {rgg1="west us", gg2="central india"}

}

resource "azurerm_resource_group" "rg1" {
  
    name = each.key
    location = each.value
}
