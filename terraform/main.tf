terraform {
  cloud {
    organization = "tedmiston"

    workspaces {
      name = "devops"
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
  type = string
  # sensitive   = true
  description = "Vercel API token"
}

module "taylore_dev" {
  source = "./modules/taylore.dev"
}

module "qcbrunch" {
  source = "./modules/qcbrunch"
}

module "foo" {
  source = "./modules/foo"
}
