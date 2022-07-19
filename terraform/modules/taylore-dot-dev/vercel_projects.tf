resource "vercel_project" "project_www" {
  name      = var.vercel_project_name_www
  framework = "vue"

  public_source              = false
  serverless_function_region = var.vercel_region
}

resource "vercel_project" "project_talks" {
  name      = var.vercel_project_name_talks
  framework = null

  public_source              = false
  serverless_function_region = var.vercel_region
}
