# LinkedIn post

Infrastructure should be repeatable, reviewable, and secure.

I built a Terraform delivery workflow for Azure using GitHub Actions:

- Pull requests run a Snyk IaC security scan before Terraform executes.
- Terraform runs `fmt`, `init`, `validate`, and `plan`.
- The approved plan is stored as an artifact, so apply uses the exact reviewed plan.
- Pushes to `develop` can deploy through a protected `production` environment.
- Manual runs support `plan`, `apply`, and a controlled `destroy` path.
- Azure resources include a resource group, VNet, subnet, public IP, NIC, and Ubuntu VM.

The goal is simple: make infrastructure changes visible before they become infrastructure.

The animated flow diagram is available here: `docs/linkedin-terraform-flow.html`

#Terraform #Azure #GitHubActions #DevSecOps #InfrastructureAsCode #CloudEngineering

## Sharing the visual

Open the HTML file in a browser and capture the animation as a short screen recording or GIF for LinkedIn. For a static post image, pause on a clean frame and export a screenshot at 1,200 x 675 or larger.
