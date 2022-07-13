# -- public repos --

resource "github_repository" "devops" {
  name        = "devops"
  description = "hello, world :robot:"

  visibility = "public"
}
