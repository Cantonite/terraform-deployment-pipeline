terraform {
  required_version = "1.0.10"

  backend "remote" {
    organization = "Cantonite"

    workspaces {
      name = "terraform-deployment-pipeline-staging"
    }
  }
}

module "this" {
  source = "./terraform/template"

  message = "Hello, Staging World!"
}
