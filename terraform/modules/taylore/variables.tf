variable "vercel_project_name_base" {
  type        = string
  description = "Vercel project base name (without a sub-site suffix)"
}

variable "vercel_region" {
  type        = string
  default     = "sfo1"
  description = "Vercel Serverless Functions region"
}
