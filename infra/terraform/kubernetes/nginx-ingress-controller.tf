resource "helm_release" "nginx_ingress"{
  for_each = { for namespace in var.namespaces: namespace => namespace }
  name       = "nginx-ingress-controller-${each.key}"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"
  version    = "11.3.18"
  namespace  = "${each.key}"

  set {
    name  = "extraArgs.ingress-class"
    value = "nginx_ingress_${each.key}"
  }
}
