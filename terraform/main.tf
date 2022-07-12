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

module "obsidian_day_template" {
  source = "./modules/obsidian_day_template"

  basic_auth_username = var.obsidian_day_template_username
  basic_auth_password = var.obsidian_day_template_password
}

variable "obsidian_day_template_username" {
  type        = string
  sensitive   = true
  description = "Obsidian Day Template username"
}

variable "obsidian_day_template_password" {
  type        = string
  sensitive   = true
  description = "Obsidian Day Template password"
}

module "qcbrunch" {
  source = "./modules/qcbrunch"
}

module "taylore_dev" {
  source = "./modules/taylore.dev"
}
