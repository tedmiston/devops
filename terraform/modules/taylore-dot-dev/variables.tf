variable "vercel_project_name_www" {
  type        = string
  description = "Vercel project name - Root / WWW"
}

variable "vercel_region" {
  type        = string
  default     = "sfo1"
  description = "Vercel Serverless Functions region"
}
