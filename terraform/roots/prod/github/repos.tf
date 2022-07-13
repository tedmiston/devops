# -- public repos --

resource "github_repository" "devops" {
  name         = "devops"
  description  = "hello, world :robot:"
  homepage_url = "https://github.com/tedmiston/devops"

  visibility = "public"
}
