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

module "obsidian_day_template" {
  source = "./modules/obsidian_day_template"

  basic_auth_username = var.obsidian_day_template_username
  basic_auth_password = var.obsidian_day_template_password
}

module "qcbrunch" {
  source = "./modules/qcbrunch"
}

module "taylore_dot_dev" {
  source = "./modules/taylore_dot_dev"
}
