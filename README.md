# Base Terraform Solution Template

A streamlined Terraform template for quickly provisioning Azure resources with GitHub-integrated deployments.

## Getting Started

1. Select "Use this template" to create a new repository for your code from this template.

1. Clone the resulting repository from GitHub.

1. Set environment variables for the Tenant ID and Subscription ID you want to use

    ```powershell
    $env:ARM_TENANT_ID = ''
    $env:ARM_SUBSCRIPTION_ID = ''
    ```

    Make sure you have at least Contributor & RBAC Administrator over the subscription.

1. Optionally, use the helper scripts to set things up

    ```powershell
    # This will create a resource group & managed identity for deployment, and configure OIDC (workload federated identity).
    ./helpers/New-TerraformEnvironment.ps1

    # After the above step populates your `.env` file, run the following to create and configure your GitHub Environments:
    ./helpers/New-GitHubEnvironments.ps1
    ```

1. Proceed with Terraforming!  Add content to the IaC folder.

## About the helper scripts

There are two optional script [/helpers/New-AzureEnvironment.ps1](/helpers/New-AzureEnvironment.ps1) provides a simple way to bootstrap initial resources.

Given appropriate access (see the script header) it will make:

- A resource group and managed identity for deployment
- A managed identity for deployment with appropriate permissions to the above, and federated credentials
