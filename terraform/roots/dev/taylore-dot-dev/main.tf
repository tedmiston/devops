terraform {
  cloud {
    organization = "tedmiston"

    workspaces {
      name = "taylore-dot-dev-dev"
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
  type        = string
  sensitive   = true
  description = "Vercel API token"
}

module "taylore_dot_dev" {
  # https://github.com/hashicorp/terraform/issues/23333#issuecomment-564662878
  # `ln -s ../../../modules/taylore-dot-dev/ ./taylore-dot-dev`
  source = "./taylore-dot-dev"

  vercel_project_name_base = "taylore-dev"
  vercel_region            = "iad1"
}
