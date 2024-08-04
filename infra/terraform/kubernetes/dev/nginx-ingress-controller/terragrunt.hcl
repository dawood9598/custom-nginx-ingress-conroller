terraform {
    source = "../../../modules/kubernetes/nginx-ingress-controller"
}

inputs = {
    namespace     = "nginx-ingress-dev" 
    ingress_class = "nginx-ingress-dev" 
    chart_version = "11.3.18"
    env           = "dev"
}