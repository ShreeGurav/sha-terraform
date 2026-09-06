terraform {
  backend "azurerm" {
    storage_account_name = "shaterraformstorage"
    container_name = "sha-az"
    key = "terraform.tfstate"
  }
}