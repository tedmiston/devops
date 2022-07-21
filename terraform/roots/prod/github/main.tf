terraform {
  required_version = "~> 1.0"

  cloud {
    organization = "tedmiston"

    workspaces {
      name = "github"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.github_token

  owner = "tedmiston"
}
