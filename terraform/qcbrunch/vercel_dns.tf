# -- vercel system dns records --

# these records are created by vercel and not editable via the vercel web app.
# however, editing / overriding via terraform **does** work (whether that's
# intentional or a bug is currently unclear).  the validation constraints also
# differ between the terraform provider and the vercel web app.

resource "vercel_dns_record" "vercel_system_cname" {
  id     = "rec_cedd6cebbf44a21005a9321e"
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "*"
  value  = "cname.vercel-dns.com."
  ttl    = 60
}

resource "vercel_dns_record" "vercel_system_a" {
  id     = "rec_0c999ce54a4bb0fd59179516"
  domain = "qcbrunch.com"
  type   = "A"
  name   = ""
  value  = "76.76.21.21"
  ttl    = 60
}

resource "vercel_dns_record" "vercel_system_caa" {
  id     = "rec_d0c3daafcc2f548ef7ecac17"
  domain = "qcbrunch.com"
  type   = "CAA"
  name   = ""
  value  = "0 issue \"letsencrypt.org\""
  # ttl    = 0
  # ttl    = null
  ttl = 60
}

# -- custom dns records --

# sendgrid domain authentication (sender authentication)
# - https://docs.sendgrid.com/ui/account-and-settings/how-to-set-up-domain-authentication

# rec_7569dbe13a03d1a292e5f903
resource "vercel_dns_record" "sendgrid_domain_authentication_2" {
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "s1._domainkey"
  value  = "s1.domainkey.u9701527.wl028.sendgrid.net."
  ttl    = 86400
}

# rec_9188463caaa53c00f272de76
resource "vercel_dns_record" "sendgrid_domain_authentication_1" {
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "em2428"
  value  = "u9701527.wl028.sendgrid.net."
  ttl    = 86400
}

# rec_f218a77416d00fb76fe5c3d4
resource "vercel_dns_record" "sendgrid_domain_authentication_3" {
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "s2._domainkey"
  value  = "s2.domainkey.u9701527.wl028.sendgrid.net."
  ttl    = 86400
}
