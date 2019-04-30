variable "ssm_document_name" {
  description = "name of ssm document to join domain."
}

variable "directory_id" {
  description = "id of aws directory service AD domain."
}

variable "directory_name" {
  description = "name of aws directory service AD domain."
}

variable "directory_ou" {
  description = "orgainisational unit of aws directory service AD domain. ie. DC=corp,DC=example,DC=com"
}

variable "dns_ip_addresses" {
  type = "list"
  description = "id of aws directory service AD domain."
}
