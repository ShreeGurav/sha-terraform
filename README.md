# sha-terraform

## GitHub Actions

The workflow in `.github/workflows/terraform.yml` runs `terraform plan` for pull requests and applies changes on pushes to `develop`. Manual runs have `plan`, `apply`, and `destroy` actions. Apply and destroy use the GitHub `production` environment, which must have a required reviewer configured to approve deployments. The `destroy` action deletes the `example-resources` resource group and all resources inside it.

Configure these repository secrets before using it:

- `AZURE_CREDENTIALS`: service principal JSON containing `clientId`, `clientSecret`, `subscriptionId`, and `tenantId`.
- `TF_VAR_ADMIN_SSH_PUBLIC_KEY`: contents of the VM SSH public key, such as `~/.ssh/terraform_vm.pub`.
- `SNYK_TOKEN`: Snyk API token for Terraform IaC scanning.

Snyk IaC scanning runs before Terraform. The workflow fails when high or critical severity issues are found.

Give the service principal permission to manage the target Azure resources and `Storage Blob Data Contributor` access to the Terraform state storage account.
