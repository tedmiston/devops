# == public repos ==

# -- devops --

resource "github_repository" "devops_repo" {
  name         = "devops"
  description  = "Terraform and related things :robot:"
  homepage_url = "https://github.com/tedmiston/devops"
  visibility   = "public"
}

resource "github_branch" "devops" {
  repository = github_repository.devops_repo.name
  branch     = "main"
}

resource "github_branch_default" "devops" {
  repository = github_repository.devops_repo.name
  branch     = github_branch.devops.branch
}

resource "github_branch_protection" "devops" {
  repository_id = github_repository.devops_repo.node_id
  pattern       = github_branch.devops.branch
}

# -- boa --

resource "github_repository" "boa_repo" {
  name         = "boa"
  description  = "Boa is a Python package for normalizing and converting strings to snakecase."
  homepage_url = "https://pypi.org/project/boa-str/"
  visibility   = "public"
}

resource "github_branch" "boa" {
  repository = github_repository.boa_repo.name
  branch     = "main"
}

resource "github_branch_default" "boa" {
  repository = github_repository.boa_repo.name
  branch     = github_branch.boa.branch
}

resource "github_branch_protection" "boa" {
  repository_id = github_repository.boa_repo.node_id
  pattern       = github_branch.boa.branch
}

# -- qcbrunch --

resource "github_repository" "qcbrunch_repo" {
  name         = "qcbrunch"
  description  = "The Breakfast & Brunch Guide for Cincinnati, Ohio 🍴"
  homepage_url = "https://www.qcbrunch.com"
  visibility   = "public"

  has_issues             = true
  has_downloads          = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true

  topics = [
    "breakfast",
    "cincinnati",
    "food",
    "restaurant",
    "restaurant-information",
  ]
}

resource "github_branch" "qcbrunch_branch_main" {
  repository = github_repository.qcbrunch_repo.name
  branch     = "master"
}

resource "github_branch_default" "qcbrunch_branch_default" {
  repository = github_repository.qcbrunch_repo.name
  branch     = github_branch.qcbrunch_branch_main.branch
}

resource "github_branch_protection" "qcbrunch_branch_protection" {
  repository_id = github_repository.qcbrunch_repo.node_id
  pattern       = github_branch.qcbrunch_branch_main.branch
}
