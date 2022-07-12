variable "project" {
  type        = string
  default     = "qcbrunch"
  description = "Project name"
}

variable "domain" {
  type        = string
  default     = "qcbrunch.com"
  description = "Root domain"
}

variable "vercel_region" {
  type        = string
  default     = "sfo1"
  description = "Vercel Serverless Functions region"
}
