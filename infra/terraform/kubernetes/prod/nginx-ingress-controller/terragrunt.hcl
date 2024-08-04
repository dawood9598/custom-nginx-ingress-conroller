terraform {
    source = "../../../modules/kubernetes/nginx-ingress-controller"
}

inputs = {
    namespace     = "nginx-ingress-prod" 
    ingress_class = "nginx-ingress-prod" 
    chart_version = "11.3.18"
    env           = "prod"
}