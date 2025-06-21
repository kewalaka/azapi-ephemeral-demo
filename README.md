# Base Terraform Solution Template

A streamlined Terraform template for quickly provisioning Azure resources with GitHub-integrated deployments.

## Getting Started

This is designed to be used with [Az-Bootstrap](https://github.com/kewalaka/az-bootstrap)

Az-Bootstrap will create the deployment resource group, storage account for state, plan & apply identities.

To make the sample code work

1) Update the `app_name` in locals.tf to match the name of the repository.

1) Add the name of your CI runner to `.github\workflow\terraform-deploy.yml`

You should then be able to run the `Deploy Iac using Terraform` action on GitHub.

### Alternatives to using runners

If you don't have any GitHub runners available, or don't want to use them, you can either:

- switch the Terraform Storage Account to allow public networking (check [.azbootstrap.jsonc](.azbootstrap.jsonc) for the details of the storage account)
- use the `unlock_resource_firewalls` action to dynamically unlock the firewall during CI runs (check the [README.md](https://github.com/kewalaka/github-azure-iac-templates/blob/main/.github/actions/azure-unlock-firewall/README.md) for details).
