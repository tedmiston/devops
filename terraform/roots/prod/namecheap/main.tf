terraform {
  required_version = "~> 1.0"

  cloud {
    organization = "tedmiston"

    # this workspace is setup to run locally instead of remotely because
    # terraform cloud uses dynamic IPs but the namecheap API requires each IP
    # being whitelisted or the requests gets denied.
    #
    # unfortunately in terraform cloud, applies seem to use a very large pool of
    # dynamic IPs, and whitelisting each one individually is impossible.
    #
    # https://ap.www.namecheap.com/settings/tools/apiaccess/whitelisted-ips
    workspaces {
      name = "namecheap"
    }
  }

  required_providers {
    namecheap = {
      source = "namecheap/namecheap"
      version = ">= 2.0.0"
    }
  }
}

# https://registry.terraform.io/providers/namecheap/namecheap/latest/docs
# https://registry.terraform.io/providers/namecheap/namecheap/latest/docs/guides/namecheap_domain_records_guide
#
# https://ap.www.namecheap.com/settings/tools/apiaccess/
# https://www.namecheap.com/support/api/intro/
# https://www.namecheap.com/support/knowledgebase/article.aspx/434/2237/how-do-i-set-up-host-records-for-a-domain/
provider "namecheap" {
  user_name = var.namecheap_username
  api_user = var.namecheap_api_user
  api_key = var.namecheap_api_key

  use_sandbox = false
}
