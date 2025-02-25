# terraform-gitlab-project_environment

Terraform module to manage the following Twingate resources:

* gitlab_project_environment

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_group" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-group/local"
  version = "1.1.4"

  name = "Example (group)"
  path = "example-group-48165"
}

module "gitlab_project" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-project/local"
  version = "1.1.5"

  name = "example-project"

  description  = "Example (project)"
  namespace_id = module.gitlab_group.id
}

module "gitlab_project_environment" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-project-environment/local"
  version = "1.0.0"

  project = module.gitlab_project.id
  name    = "example-environment"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project_environment.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_environment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_agent_id"></a> [cluster\_agent\_id](#input\_cluster\_agent\_id) | The cluster agent to associate with this environment | `number` | `null` | no |
| <a name="input_external_url"></a> [external\_url](#input\_external\_url) | Place to link to for this environment | `string` | `null` | no |
| <a name="input_flux_resource_path"></a> [flux\_resource\_path](#input\_flux\_resource\_path) | The Flux resource path to associate with this environment | `string` | `null` | no |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | The Kubernetes namespace to associate with this environment | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the environment | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The ID or full path of the project to environment is created for | `string` | n/a | yes |
| <a name="input_stop_before_destroy"></a> [stop\_before\_destroy](#input\_stop\_before\_destroy) | Determines whether the environment is attempted to be stopped before the environment is deleted | `bool` | `null` | no |
| <a name="input_tier"></a> [tier](#input\_tier) | The tier of the new environment | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The ISO8601 date/time that this environment was created at in UTC |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_slug"></a> [slug](#output\_slug) | The name of the environment in lowercase, shortened to 63 bytes, and with everything except 0-9 and a-z replaced with - |
| <a name="output_state"></a> [state](#output\_state) | State the environment is in |
| <a name="output_updated_at"></a> [updated\_at](#output\_updated\_at) | The ISO8601 date/time that this environment was last updated at in UTC |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
