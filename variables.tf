variable "name" {
  type        = string
  description = "The name of the environment"
}

variable "project" {
  type        = string
  description = "The ID or full path of the project to environment is created for"
}

variable "cluster_agent_id" {
  type        = number
  default     = null
  description = "The cluster agent to associate with this environment"
}

variable "external_url" {
  type        = string
  default     = null
  description = "Place to link to for this environment"
}

variable "flux_resource_path" {
  type        = string
  default     = null
  description = "The Flux resource path to associate with this environment"
}

variable "kubernetes_namespace" {
  type        = string
  default     = null
  description = "The Kubernetes namespace to associate with this environment"
}

variable "stop_before_destroy" {
  type        = bool
  default     = null
  description = "Determines whether the environment is attempted to be stopped before the environment is deleted"
}

variable "tier" {
  type        = string
  default     = null
  description = "The tier of the new environment"
}
