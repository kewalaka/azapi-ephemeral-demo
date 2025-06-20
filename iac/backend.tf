terraform {
  backend "azurerm" {
    use_azuread_auth = true
  }
}

# If you're working on your own and want to develop locally, you can override the 
# backend configuration using a backend_override.tf file in the same directory:

# terraform {
#   backend "local" {}
# }

# if you then re-run terraform init, terraform will use the local backend.
