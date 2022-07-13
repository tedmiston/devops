variable "vercel_api_token" {
  type        = string
  sensitive   = true
  description = "Vercel API token"
}

variable "obsidian_day_template_username" {
  type        = string
  description = "Obsidian Day Template username"
}

variable "obsidian_day_template_password" {
  type        = string
  sensitive   = true
  description = "Obsidian Day Template password"
}
