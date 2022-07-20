terraform {
  cloud {
    organization = "tedmiston"

    workspaces {
      name = "taylore-prod"
    }
  }

  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.4"
    }
  }
}

module "taylore" {
  source = "./taylore"

  vercel_project_name_base = "taylore-prod"
  vercel_region            = "iad1"
}
