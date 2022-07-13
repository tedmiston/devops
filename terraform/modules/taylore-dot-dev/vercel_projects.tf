locals {
  project = "taylore-dot-dev-www"
}

resource "vercel_project" "project_dev" {
  id        = "Qmdkf6qmoSBw2FMnsVQRpiRA7WCvSQqwDA5WRyp5kToM11"
  name      = "${local.project}-dev"
  framework = "vue"

  public_source              = false
  serverless_function_region = var.vercel_region
}

resource "vercel_project" "project_prod" {
  id        = "QmRogMZ9PpryF3SkECwnosi6i1xjpEKQgEaSgZp4GzNvnx"
  name      = "${local.project}-prod"
  framework = "vue"

  public_source              = false
  serverless_function_region = var.vercel_region
}
