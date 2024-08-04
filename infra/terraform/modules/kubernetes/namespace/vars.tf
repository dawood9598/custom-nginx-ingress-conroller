variable "kubeconfig" {
  type = string
  default = "~/.kube/config"
}

variable "name" {
  description = "The Kubernetes namespace to deploy the Ingress Controller in"
  type        = string
}