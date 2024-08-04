terraform {
    source = "../../../modules/kubernetes/namespace"
}

inputs = {
    name     = "nginx-ingress-prod" 
}