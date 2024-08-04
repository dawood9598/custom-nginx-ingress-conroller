variable "kubeconfig" {
  type = string
  default = "~/.kube/config"
}

variable "chart_version" {
  description = "The version of the NGINX Ingress Controller Helm chart"
  type        = string
}

variable "namespace" {
  description = "The Kubernetes namespace to deploy the Ingress Controller in"
  type        = string
}

variable "ingress_class" {
  description = "The ingress class name"
  type        = string
}

variable "env" {
  description = "The environment name"
  type        = string
}
