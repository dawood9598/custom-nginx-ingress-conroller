resource "helm_release" "nginx_ingress"{
  name       = "nginx-ingress"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"
  version    =  var.chart_version
  namespace  =  var.namespace

  set {
    name  = "extraArgs.ingress-class"
    value = var.ingress_class
  }
  set {
    name  = "ingressClassResource.name"
    value = var.ingress_class
  }
}
