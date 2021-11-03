variable "message" {
  type    = string
  default = "Hello, Production World!"
}

output "hello_world_message" {
  value = var.message
}
