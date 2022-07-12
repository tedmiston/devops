resource "vercel_project" "project_dev" {
  id        = "Qmdkf6qmoSBw2FMnsVQRpiRA7WCvSQqwDA5WRyp5kToM11"
  name      = "taylore-dot-dev-www-dev"
  framework = "vue"

  public_source              = false
  serverless_function_region = "sfo1"
}

resource "vercel_project" "project_prod" {
  id        = "QmRogMZ9PpryF3SkECwnosi6i1xjpEKQgEaSgZp4GzNvnx"
  name      = "taylore-dot-dev-www-prod"
  framework = "vue"

  public_source              = false
  serverless_function_region = "sfo1"
}
