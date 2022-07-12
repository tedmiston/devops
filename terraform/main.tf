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

module "qcbrunch" {
  source = "./modules/qcbrunch"
}

module "taylore_dot_dev" {
  source = "./modules/taylore_dot_dev"
}
