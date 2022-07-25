variable "namecheap_username" {
  type = string
  sensitive = false
  description = "Namecheap Username"
}

variable "namecheap_api_user" {
  type = string
  sensitive = false
  description = "Namecheap API user"
}

variable "namecheap_api_key" {
  type = string
  sensitive = true
  description = "Namecheap API key"
}
