module "gitlab_project_environment" {
  source = "../../"

  project = data.gitlab_project.this.id
  name    = "example-environment"
}
