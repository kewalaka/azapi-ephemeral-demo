# Base Terraform Solution Template

A streamlined Terraform template for quickly provisioning Azure resources with GitHub-integrated deployments.

## Getting Started

This is designed to be used with [Az-Bootstrap](https://github.com/kewalaka/az-bootstrap)

Az-Bootstrap will create the deployment resource group, storage account for state, plan & apply identities.

To make the sample code work, update the `app_name` in locals.tf to match the name of the repository.
