terraform {
  required_version = "1.0.10"

  backend "remote" {
    organization = "Cantonite"

    workspaces {
      name = "terraform-deployment-pipeline-development"
    }
  }
}

module "this" {
  source = "./terraform/template"

  message = "Hello, Development World!"
}
