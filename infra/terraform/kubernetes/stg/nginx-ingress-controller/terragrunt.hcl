terraform {
    source = "../../../modules/kubernetes/nginx-ingress-controller"
}

inputs = {
    namespace     = "nginx-ingress-stg" 
    ingress_class = "nginx-ingress-stg" 
    chart_version = "11.3.18"
    env           = "stg"
}