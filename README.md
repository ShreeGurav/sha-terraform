# sha-terraform

## GitHub Actions

The workflow in `.github/workflows/terraform.yml` runs `terraform plan` for pull requests and applies changes on pushes to `develop` or from a manual workflow run.

Configure these repository secrets before using it:

- `AZURE_CREDENTIALS`: service principal JSON containing `clientId`, `clientSecret`, `subscriptionId`, and `tenantId`.
- `TF_VAR_ADMIN_SSH_PUBLIC_KEY`: contents of the VM SSH public key, such as `~/.ssh/terraform_vm.pub`.

Give the service principal permission to manage the target Azure resources and `Storage Blob Data Contributor` access to the Terraform state storage account.
