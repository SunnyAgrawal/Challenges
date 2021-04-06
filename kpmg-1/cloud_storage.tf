# Cloud storgae bucket to store helm templates
resource "google_storage_bucket" "helm-template" {
  name          = var.cs_helm
  location      = var.region
  force_destroy = false
}