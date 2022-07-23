# == public repos ==

# the `mineiros-io/terraform-github-repository` module only supports branch
# protection v3 which throws errors when created outside of a github
# organization account.  they are planning to add support for branch protection
# v4 in the future [1], but for now we need to use the github provider directly
# for it.
#
# [1]: https://github.com/mineiros-io/terraform-github-repository/issues/124

# -- devops --

resource "github_repository" "devops_repo" {
  name         = "devops"
  description  = "Terraform and related things :robot:"
  homepage_url = "https://github.com/tedmiston/devops"
  visibility   = "public"
}

resource "github_branch" "devops_branch_main" {
  repository = github_repository.devops_repo.name
  branch     = "main"
}

resource "github_branch_default" "devops_branch_default" {
  repository = github_repository.devops_repo.name
  branch     = github_branch.devops_branch_main.branch
}

resource "github_branch_protection" "devops_branch_protection" {
  repository_id = github_repository.devops_repo.node_id
  pattern       = github_branch.devops_branch_main.branch
}

# -- boa --

resource "github_repository" "boa_repo" {
  name         = "boa"
  description  = "Boa is a Python package for normalizing and converting strings to snakecase."
  homepage_url = "https://pypi.org/project/boa-str/"
  visibility   = "public"
}

resource "github_branch" "boa_branch_main" {
  repository = github_repository.boa_repo.name
  branch     = "main"
}

resource "github_branch_default" "boa_branch_default" {
  repository = github_repository.boa_repo.name
  branch     = github_branch.boa_branch_main.branch
}

resource "github_branch_protection" "boa_branch_protection" {
  repository_id = github_repository.boa_repo.node_id
  pattern       = github_branch.boa_branch_main.branch
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

# -- wordle-tools --

module "wordle_tools_repo" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.16.0"

  name       = "wordle-tools"
  visibility = "public"

  auto_init        = true
  license_template = "mit"
  default_branch   = "main"
}

resource "github_branch_protection" "wordle_tools_branch_protection" {
  repository_id = module.wordle_tools_repo.repository.node_id
  pattern       = module.wordle_tools_repo.repository.default_branch
}
