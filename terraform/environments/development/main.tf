terraform {
  required_version = "1.0.9"

  backend "remote" {
    organization = "Cantonite"

    workspaces {
      name = "terraform-deployment-pipeline-development"
    }
  }
}

module "this" {
  source = "../template"

  message = "Hello, Development World!"
}
