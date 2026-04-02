# terraform-google-agent-registry

## Description
The Agent Registry Service is a management plane API that acts as a unified catalog and single source of truth for AI agents and Model Context Protocol (MCP) servers. It simplifies and automates the management of agent definitions and tool specifications, allowing developers to securely discover and orchestrate tool usage within the Agentic ecosystem.

This module provides support for:
- Provisioning and managing Agent Registry Services.
- Retrieving agent metadata and functional capabilities.
- Secure discovery and retrieval of MCP server tool definitions.
- Streamlining the fetching of secure endpoint specifications.

### Tagline
Terraform module for managing Google Cloud Agent Registry
### Detailed
This module simplifies and automates the management of AI agent definitions and Model Context Protocol (MCP) servers to assert tool capabilities and manage secure discovery. It facilitates the orchestrated usage of tools within the Agentic ecosystem by providing a single source of truth for all deployed agents.

The resources and data sources that this module will manage include:
- **Agent Registry Service**: A foundational blueprint for provisioning and managing the Registry lifecycle.
- **Agent Metadata**: Facilitates the retrieval of functional capabilities for registered agents.
- **MCP Server Definitions**: Enables the discovery and retrieval of standardized tool definitions.
- **Secure Endpoints**: Streamlines the fetching of connection specifications for agent execution.

### PreDeploy
To deploy this blueprint, the following prerequisites must be met in the target Google Cloud project:

1. **Enable APIs**: The `agentregistry.googleapis.com` and `apphub.googleapis.com` APIs must be enabled.
2. **Permissions**: The service account or user identity provisioning these resources requires the following roles:
    - **Agent Registry API Admin** (`roles/agentregistry.admin`).
    - **Service Usage Admin** (`roles/serviceusage.serviceUsageAdmin`) to enable the required APIs.
3. **Billing**: An active billing account must be linked to the project.

## Architecture
The Agent Registry integrates with several Google Cloud services to provide a secure management boundary for AI agents.

1. **AI Agents**: Registered via Agent Engine to assert functional capabilities.
2. **MCP Servers**: Standardized tool definitions discovered via the registry catalog.
3. **Endpoints**: Targets for secure service execution.
4. **App Hub**: Implemented as a new catalog type to provide application-centric observability.


## Documentation
- [Hosting a Static Website](https://cloud.google.com/storage/docs/hosting-static-website)

## Deployment Duration
Configuration: X mins
Deployment: Y mins

## Cost
[Blueprint cost details](https://cloud.google.com/products/calculator?id=02fb0c45-cc29-4567-8cc6-f72ac9024add)

## Usage

Basic usage of this module is as follows:

```hcl
module "agent_registry_service" {
  source     = "vandnagarggoogle/agent-registry/google//modules/agent-registry-service"
  project_id = var.project_id
  location   = "us-central1"
  service_id = "test-service-${var.random_string}"
  interfaces = [
  { "protocol_binding" = "HTTP_JSON", "url" = "https://api.stripe.com" }]
  endpoint_spec = {
    type = "NO_SPEC"
  }
}

```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

No inputs.

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] v0.13
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v3.0

### Service Account

A service account with the following roles must be used to provision
the resources of this module:

- Storage Admin: `roles/storage.admin`

The [Project Factory module][project-factory-module] and the
[IAM module][iam-module] may be used in combination to provision a
service account with the necessary roles applied.

### APIs

A project with the following APIs enabled must be used to host the
resources of this module:

- Google Cloud Storage JSON API: `storage-api.googleapis.com`

The [Project Factory module][project-factory-module] can be used to
provision a project with the necessary APIs enabled.

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.

[iam-module]: https://registry.terraform.io/modules/terraform-google-modules/iam/google
[project-factory-module]: https://registry.terraform.io/modules/terraform-google-modules/project-factory/google
[terraform-provider-gcp]: https://www.terraform.io/docs/providers/google/index.html
[terraform]: https://www.terraform.io/downloads.html

## Security Disclosures

Please see our [security disclosure process](./SECURITY.md).
