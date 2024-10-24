# declare azurerm provider
# cf docs 
provider "azurerm" {
  features {}
  subscription_id = "836529be-3099-4eec-8428-68d9523b2dd9"
}

# create a resource group
resource "azurerm_resource_group" "rg" {
name ="rg2"
location = "westeurope"  
}

# create a virtual network
/*
resource "" "name" {
  
}"""*/
#create a S1 service plan
#cf
resource "azurerm_app_service_plan" "asp" {
  name = "asp1"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind = "Linux"
  reserved = true
  sku {
    tier = "standard"
    size = "S1"
  
      }
}
# create an app service

resource "azurerm_app_service" "as" {
  name = "amethyseapp"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id
  site_config {
    linux_fx_version = "DOCKER|nginx:latest"
  }
}

#create a storage account
resource "azurerm_storage_account" "sa" {
  name =  "amethysestore1"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"

}