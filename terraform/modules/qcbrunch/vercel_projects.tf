resource "vercel_project" "qcbrunch_dev" {
  id        = "QmZZyGn4FxMZ7iMg4um2S9Dmeb2ZVnp5xt2ojknBR2d7zg"
  name      = "${var.project}-dev"
  framework = null

  public_source              = false
  serverless_function_region = var.vercel_region
}

resource "vercel_project" "qcbrunch_prod" {
  id        = "QmSmPszZX5XpyfTqnjSQPus2FjkkDM1wEat1R41fwuTK6H"
  name      = "${var.project}-prod"
  framework = null

  public_source              = false
  serverless_function_region = var.vercel_region
}
