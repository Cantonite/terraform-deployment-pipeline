terraform {
  required_version = "1.0.10"

  backend "remote" {
    organization = "Cantonite"

    workspaces {
      name = "terraform-deployment-pipeline-production"
    }
  }
}

module "this" {
  source = "./terraform/template"
}
