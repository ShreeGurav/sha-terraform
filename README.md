# sha-terraform

## GitHub Actions

The workflow in `.github/workflows/terraform.yml` runs `terraform plan` for pull requests and applies changes on pushes to `develop` or from a manual workflow run.

Configure these repository secrets before using it:

- `AZURE_CREDENTIALS`: service principal JSON containing `clientId`, `clientSecret`, `subscriptionId`, and `tenantId`.
- `TF_VAR_ADMIN_PASSWORD`: password for the Linux VM administrator account.

Give the service principal permission to manage the target Azure resources and `Storage Blob Data Contributor` access to the Terraform state storage account.
