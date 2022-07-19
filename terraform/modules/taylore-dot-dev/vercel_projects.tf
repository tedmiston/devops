resource "vercel_project" "project" {
  name      = var.vercel_project_name
  framework = "vue"

  public_source              = false
  serverless_function_region = var.vercel_region
}
