terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.4"
    }
  }
}

# provider "vercel" {
#   api_token = var.vercel_api_token
# }

# variable "vercel_api_token" {
#   type = string
#   # sensitive   = true
#   description = "Vercel API token"
# }

resource "vercel_project" "foo_project" {
  name      = "my-project-2"
  framework = null

  public_source              = false
  serverless_function_region = "sfo1"
}
