variable "message" {
  type    = string
  default = "Hello, Production World!"
}

variable "environment" {
  type    = string
  default = "production"
}

output "hello_world_message" {
  value = var.message
}

terraform {
  required_version = "1.0.10"

  backend "remote" {
    organization = "Cantonite"

    workspaces {
      name = "terraform-deployment-pipeline-${var.environment}"
    }
  }
}
