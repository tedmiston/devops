# == private repos ==

# the `mineiros-io/terraform-github-repository` module only supports branch
# protection v3 which throws errors when created outside of a github
# organization account.  they are planning to add support for branch protection
# v4 in the future [1], but for now we need to use the github provider directly
# for it.
#
# [1]: https://github.com/mineiros-io/terraform-github-repository/issues/124

# -- userscripts --

module "userscripts_repo" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.16.0"

  name       = "userscripts"
  visibility = "private"

  auto_init            = true
  license_template     = "mit"
  default_branch       = "main"
  vulnerability_alerts = true

  topics = [
    "userscript",
    "userscripts",
  ]
}

resource "github_branch_protection" "userscripts_branch_protection" {
  repository_id = module.userscripts_repo.repository.node_id
  pattern       = module.userscripts_repo.repository.default_branch
}

# -- userstyles --

module "userstyles_repo" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.16.0"

  name       = "userstyles"
  visibility = "private"

  auto_init            = true
  license_template     = "mit"
  default_branch       = "main"
  vulnerability_alerts = true

  topics = [
    "userstyle",
    "userstyles",
  ]
}

resource "github_branch_protection" "userstyles_branch_protection" {
  repository_id = module.userstyles_repo.repository.node_id
  pattern       = module.userstyles_repo.repository.default_branch
}
