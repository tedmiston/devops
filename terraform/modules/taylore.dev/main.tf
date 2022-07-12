terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.4"
    }
  }
}

resource "vercel_project" "taylore_dev_project" {
  name      = "my-project-1"
  framework = null

  public_source              = false
  serverless_function_region = "sfo1"
}
