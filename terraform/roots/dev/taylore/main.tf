terraform {
  cloud {
    organization = "tedmiston"

    workspaces {
      name = "taylore-dev"
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

  vercel_project_name_base = "taylore-dev"
  vercel_region            = "iad1"
}
