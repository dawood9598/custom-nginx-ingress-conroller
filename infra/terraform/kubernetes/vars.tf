variable "namespaces" {
  type = list(string)
  default = ["nginx-ingress-dev","nginx-ingress-stg"]
}

variable "kubeconfig" {
  type = string
  default = "~/.kube/config"
}