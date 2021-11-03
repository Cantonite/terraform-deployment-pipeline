terraform {
  required_version = "1.0.10"

  backend "remote" {
    organization = "Cantonite"

    workspaces {
      prefix = "terraform-deployment-pipeline-"
    }
  }
}
