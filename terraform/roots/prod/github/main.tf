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
