variable "vercel_project_name" {
  type        = string
  description = "Vercel project name"
}

variable "vercel_region" {
  type        = string
  default     = "sfo1"
  description = "Vercel Serverless Functions region"
}
