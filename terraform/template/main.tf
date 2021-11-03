variable "message" {
  type    = string
  default = "Hello, Production World!"
}

resource "null_resource" "null" {
}

output "hello_world_message" {
  value = var.message
}
