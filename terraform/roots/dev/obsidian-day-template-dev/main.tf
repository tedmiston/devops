terraform {
  cloud {
    organization = "tedmiston"

    workspaces {
      name = "obsidian-day-template-dev"
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
  id        = "prj_4R6183xLnkBaJmXHxznrs52NcSAn"
  name      = "obsidian-day-template-dev"
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

  lifecycle {
    # vercel projects getting deleted and recreated is a PITA for directories
    # that are deployed to multiple vercel projects because the project ID
    # changing leads to deploys breaking
    prevent_destroy = true
  }
}
