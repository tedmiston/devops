terraform {
  cloud {
    organization = "tedmiston"

    workspaces {
      name = "obsidian-day-template-prod"
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

resource "vercel_project" "project" {
  name      = "obsidian-day-template-prod"
  framework = null

  environment = [
    {
      key    = "BASIC_AUTH_USERNAME"
      value  = var.obsidian_day_template_username
      target = ["development", "preview", "production"]
    },
    {
      key    = "BASIC_AUTH_PASSWORD"
      value  = var.obsidian_day_template_password
      target = ["development", "preview", "production"]
    }
  ]

  public_source              = false
  serverless_function_region = "iad1"
}
