
# Overview
The primary goal of this project is to streamline the deployment of a Nginx Ingress Controller across different environments (such as dev, prod, and stg) using Terragrunt, Terraform and helm. 

# Getting Started

## Prerequisites
1. Kubernetes cluster
2. Helm
3. Terragrunt

# Configuration Details:

## Terragrunt and Directory Structure
The repository leverages Terragrunt for managing infrastructure across multiple environments, ensuring consistent deployment processes. The primary structure includes separate directories for each environment (e.g., dev, prod, stg) and reusable modules for common resources like namespaces and the Nginx Ingress Controller.

```
infra/
└── terraform/
    └── kubernetes/
        ├── dev/
        │   ├── namespace/
        │       └── terragrunt.hcl
        │   └── nginx-ingress-controller/
        │       └── terragrunt.hcl
        ├── prod/
        │   ├── namespace/
        │       └── terragrunt.hcl
        │   └── nginx-ingress-controller/
        │       └── terragrunt.hcl
        └── stg/
        │   ├── namespace/
        │       └── terragrunt.hcl
        │   └── nginx-ingress-controller/
        │       └── terragrunt.hcl
modules/
└── kubernetes/
    ├── namespace/ 
    │       └── main.tf 
    │       └── provider.tf 
    │       └── vars.tf
    └── nginx-ingress-controller/
    │       └── main.tf 
    │       └── provider.tf 
    │       └── vars.tf
```

## Terragrunt Configuration
Each environment directory (e.g., dev, prod, stg) contains a terragrunt.hcl file, specifying the source of the modules and environment-specific variables. This setup allows for modular and reusable infrastructure components, with environment-specific customizations handled through Terragrunt.

## Using the Custom Ingress Annotation
The Nginx Ingress Controller can be configured to filter and process only Ingress resources that have a specific annotation.