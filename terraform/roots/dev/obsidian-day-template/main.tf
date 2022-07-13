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
