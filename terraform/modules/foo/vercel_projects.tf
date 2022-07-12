resource "vercel_project" "foo_project" {
  name      = "my-project-2"
  framework = null

  public_source              = false
  serverless_function_region = "sfo1"
}
