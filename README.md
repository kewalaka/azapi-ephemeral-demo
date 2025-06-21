# AzAPI ephemeral resources demo

This demo illustrates the use of ephemeral resources with the AzAPI provider.

It deploys a Log Analytics Workspace and the default Container Instances demo.

The key for Log Analytics is fetched into an ephemeral resource, and written to the Container Instances resource using the `sensitive_body` block.
