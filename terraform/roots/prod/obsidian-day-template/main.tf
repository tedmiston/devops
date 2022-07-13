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