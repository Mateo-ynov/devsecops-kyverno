output "kyverno_namespace" {
  value = helm_release.kyverno.namespace
}

output "kyverno_release_name" {
  value = helm_release.kyverno.name
}
