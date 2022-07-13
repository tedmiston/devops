terraform {
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

variable "github_token" {
  type        = string
  sensitive   = true
  description = "GitHub Personal Access Token"
}

# -- public repos --

resource "github_repository" "devops" {
  name        = "devops"
  description = "hello, world :robot:"

  visibility = "public"
}
