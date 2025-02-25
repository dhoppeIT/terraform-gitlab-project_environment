resource "gitlab_project_environment" "this" {
  name    = var.name
  project = var.project

  cluster_agent_id     = var.cluster_agent_id
  external_url         = var.external_url
  flux_resource_path   = var.flux_resource_path
  kubernetes_namespace = var.kubernetes_namespace
  stop_before_destroy  = var.stop_before_destroy
  tier                 = var.tier
}
