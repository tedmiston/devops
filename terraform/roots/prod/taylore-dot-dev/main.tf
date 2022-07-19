terraform {
  cloud {
    organization = "tedmiston"

    workspaces {
      name = "taylore-dot-dev-prod"
    }
  }

  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.4"
    }
  }
}

provider "vercel" {
  api_token = var.vercel_api_token
}

variable "vercel_api_token" {
  type        = string
  sensitive   = true
  description = "Vercel API token"
}

module "taylore_dot_dev" {
  source = "./taylore-dot-dev"

  vercel_project_name_www   = "taylore-prod-www"
  vercel_project_name_talks = "taylore-prod-talks"
  vercel_region             = "iad1"
}
