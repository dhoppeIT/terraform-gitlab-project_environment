output "created_at" {
  description = "The ISO8601 date/time that this environment was created at in UTC"
  value       = gitlab_project_environment.this.created_at
}

output "id" {
  description = "The ID of this resource"
  value       = gitlab_project_environment.this.id
}

output "slug" {
  description = "The name of the environment in lowercase, shortened to 63 bytes, and with everything except 0-9 and a-z replaced with -"
  value       = gitlab_project_environment.this.slug
}

output "state" {
  description = "State the environment is in"
  value       = gitlab_project_environment.this.state
}

output "updated_at" {
  description = "The ISO8601 date/time that this environment was last updated at in UTC"
  value       = gitlab_project_environment.this.updated_at
}
