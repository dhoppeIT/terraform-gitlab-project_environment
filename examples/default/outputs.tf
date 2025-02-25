output "created_at" {
  description = "The ISO8601 date/time that this environment was created at in UTC"
  value       = module.gitlab_project_environment.created_at
}

output "id" {
  description = "The ID of this resource"
  value       = module.gitlab_project_environment.id
}

output "slug" {
  description = "The name of the environment in lowercase, shortened to 63 bytes, and with everything except 0-9 and a-z replaced with -"
  value       = module.gitlab_project_environment.slug
}

output "state" {
  description = "State the environment is in"
  value       = module.gitlab_project_environment.state
}

output "updated_at" {
  description = "The ISO8601 date/time that this environment was last updated at in UTC"
  value       = module.gitlab_project_environment.updated_at
}
