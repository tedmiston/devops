# == public repos ==

# -- devops --

resource "github_repository" "devops" {
  name         = "devops"
  description  = "Terraform and related things :robot:"
  homepage_url = "https://github.com/tedmiston/devops"

  visibility = "public"
}

resource "github_branch" "devops" {
  repository = github_repository.devops.name
  branch     = "main"
}

resource "github_branch_default" "devops" {
  repository = github_repository.devops.name
  branch     = github_branch.devops.branch
}

resource "github_branch_protection" "devops" {
  repository_id = github_repository.devops.node_id

  pattern = github_branch.devops.branch
}

# -- boa --

resource "github_repository" "boa" {
  name         = "boa"
  description  = "Boa is a Python package for normalizing and converting strings to snakecase."
  homepage_url = "https://pypi.org/project/boa-str/"

  visibility = "public"
}

resource "github_branch" "boa" {
  repository = github_repository.boa.name
  branch     = "main"
}

resource "github_branch_default" "boa" {
  repository = github_repository.boa.name
  branch     = github_branch.boa.branch
}

resource "github_branch_protection" "boa" {
  repository_id = github_repository.boa.node_id

  pattern = github_branch.boa.branch
}
