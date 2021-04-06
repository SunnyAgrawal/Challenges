variable "project_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "zone" {
  type    = string
  default = "europe-west2-b"
}

variable "credentials_file" {
  description = "Credentials file for authentication to gcp"
  type        = string
  default     = "credentials.json"
}

variable "gke_num_nodes" {
  description = "number of gke nodes"
  default     = 2
}

variable "gke_username" {
  description = "gke username"
  default     = ""
}

variable "gke_password" {
  description = "gke password"
  default     = ""
}

variable "gke_node_type" {
  description = "GKE node"
  default     = "n1-standard-1"
}

variable "cs_helm" {
  type    = string
  default = "helm-chart-templates"
}

variable "branch_name" {
  type    = string
  default = "main"
}

variable "repo_name" {
  type    = string
}