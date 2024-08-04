terraform {
    source = "../../../modules/kubernetes/namespace"
}

inputs = {
    name     = "nginx-ingress-stg" 
    env      = "stg"
}