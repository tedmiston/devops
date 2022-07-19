variable "vercel_project_name_www" {
  type        = string
  description = "Vercel project name - Root / WWW site"
}

variable "vercel_project_name_talks" {
  type        = string
  description = "Vercel project name - Talks site"
}

variable "vercel_region" {
  type        = string
  default     = "sfo1"
  description = "Vercel Serverless Functions region"
}
