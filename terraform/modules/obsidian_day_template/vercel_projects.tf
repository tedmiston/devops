resource "vercel_project" "obsidian_day_template_project" {
  id        = "prj_EQ2I5oI5Vky7sYui63vzb2dDCftq"
  name      = "day-template-jinja-prod"
  framework = null

  environment = [
    {
      id     = "0pgonmbJLr4rR2Hm"
      key    = "BASIC_AUTH_USERNAME"
      value  = var.basic_auth_username
      target = ["development", "preview", "production"]
    },
    {
      id     = "DNdz0fUWwDLgWlNb"
      key    = "BASIC_AUTH_PASSWORD"
      value  = var.basic_auth_password
      target = ["development", "preview", "production"]
    }
  ]

  public_source              = false
  serverless_function_region = "iad1"
}
