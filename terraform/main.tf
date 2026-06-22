resource "helm_release" "kyverno" {
  name             = "kyverno"
  namespace        = "kyverno"
  repository       = "https://kyverno.github.io/kyverno/"
  chart            = "kyverno"
  create_namespace = true
  skip_crds        = false

  set = [
    {
      name  = "admissionController.replicas"
      value = "1"
    },
    {
      name  = "backgroundController.replicas"
      value = "1"
    },
    {
      name  = "cleanupController.replicas"
      value = "1"
    },
    {
      name  = "reportsController.replicas"
      value = "1"
    }
  ]
}
