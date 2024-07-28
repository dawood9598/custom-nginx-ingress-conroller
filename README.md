This repository contains a customized Nginx Ingress Controller Helm chart and example usage demonstrating how to configure the controller to process Ingress resources with a custom annotation.

# Overview

The custom Nginx Ingress Controller is configured to filter and process only Ingress resources that have a specific annotation. This allows for targeted management of Ingress resources within your Kubernetes cluster.

# Getting Started

## Prerequisites
Kubernetes cluster
Helm

# Configuration Details:

## Helm Chart
The custom Nginx Ingress Controller Helm chart includes configurations to filter Ingress resources based on a custom annotation. You can find the configuration in **nginx-ingress-controller/values.yaml.**

This configuration ensures that the Nginx Ingress Controller processes only those Ingress resources that are annotated with nginx-trial.

## Deploy the Custom Nginx Ingress Controller

1. Clone the repository:
`git clone https://github.com/dawood9598/custom-nginx-ingress-conroller.git`
2. Install the Helm chart:
`cd custom-nginx-ingress-conroller`
`helm install custom-nginx-ingress ./nginx-ingress-controller`

## Using the Custom Ingress Annotation
To use the custom Nginx Ingress Controller with your application, annotate your Ingress resources with the custom annotation nginx-trial: "true". You can find the configuration in **sample-app/ingress.yaml**

