terraform {
  required_version = ">= 1.8.0"

  required_providers {
    # The root of the configuration where Terraform Apply runs should specify the maximum allowed provider version.
    # https://developer.hashicorp.com/terraform/language/providers/requirements#best-practices-for-provider-versions  
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.7"
    }
  }

}

provider "azurerm" {
  # By default, all resource providers will be enabled in the subscription when Terraform first runs
  # security recommendations are to only enable the providers that are required.
  # AzureRM v4 version:
  resource_provider_registrations = "none"
  # AzureRM v3 version:
  # skip_provider_registration = true

  storage_use_azuread = true

  features {
    resource_group {
      prevent_deletion_if_contains_resources = false # This is to handle MCAPS or other policy driven resource creation.
    }

    # some default safety features for Key Vault
    key_vault {
      purge_soft_delete_on_destroy    = false
      recover_soft_deleted_key_vaults = true
    }
  }
}

