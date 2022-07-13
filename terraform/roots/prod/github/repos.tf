# -- public repos --

resource "github_repository" "devops" {
  name         = "devops"
  description  = "Terraform and related things :robot:"
  homepage_url = "https://github.com/tedmiston/devops"

  visibility = "public"
}

resource "github_repository" "boa" {
  name         = "boa"
  description  = "Boa is a Python package for normalizing and converting strings to snakecase."
  homepage_url = "https://pypi.org/project/boa-str/"

  visibility = "public"
}
