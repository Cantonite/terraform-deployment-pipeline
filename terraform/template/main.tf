variable "message" {
  type    = string
  default = "Hello, Production World!"
}

resource "null_resource" "null" {
}

output "hello_world_message" {
  value = var.message
}

terraform {
  required_version = "1.0.10"

  backend "remote" {
    organization = "Cantonite"

    workspaces {
      prefix = "terraform-deployment-pipeline-"
    }
  }
}
