resource "kubernetes_secret_v1" "main" {
  metadata {
    name        = var.name
    namespace   = var.namespace
    labels      = var.labels
    annotations = var.annotations
  }

  data      = var.data
  type      = var.type
  immutable = var.immutable
}
