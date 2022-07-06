resource "local_file" "exemplo" {
    filename = "exemplo.txt"
    content = var.content
}

data "local_file" "nova_exemplo" {
    filename = local_file.exemplo.filename
}
  
output "data-source-result" {
    value = data.local_file.nova_exemplo.content_base64
}
  
variable "content" {
  
}

output "id-do-arquivo" {
    value = local_file.exemplo.id
}

output "name-do-arquivo" {
    value = var.content
}
  
