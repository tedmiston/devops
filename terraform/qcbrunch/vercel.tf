# rec_d0c3daafcc2f548ef7ecac17
resource "vercel_dns_record" "caa" {
  domain = "qcbrunch.com"
  type   = "CAA"
  name   = ""
  value  = "0 issue \"letsencrypt.org\""
  # ttl    = 0
  # ttl    = null
  ttl = 60
}

# rec_cedd6cebbf44a21005a9321e
resource "vercel_dns_record" "cname_1" {
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "*"
  value  = "cname.vercel-dns.com."
  ttl    = 60
}

# rec_f218a77416d00fb76fe5c3d4
resource "vercel_dns_record" "cname_2" {
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "s2._domainkey"
  value  = "s2.domainkey.u9701527.wl028.sendgrid.net."
  # ttl    = 0
  # ttl    = null
  ttl = 60
}

# rec_7569dbe13a03d1a292e5f903
resource "vercel_dns_record" "cname_3" {
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "s1._domainkey"
  value  = "s1.domainkey.u9701527.wl028.sendgrid.net."
  # ttl    = 0
  # ttl    = null
  ttl = 60
}

# rec_9188463caaa53c00f272de76
resource "vercel_dns_record" "cname_4" {
  domain = "qcbrunch.com"
  type   = "CNAME"
  name   = "em2428"
  value  = "u9701527.wl028.sendgrid.net."
  # ttl    = 0
  # ttl    = null
  ttl = 60
}

# rec_0c999ce54a4bb0fd59179516
resource "vercel_dns_record" "a" {
  domain = "qcbrunch.com"
  type   = "A"
  name   = ""
  value  = "76.76.21.21"
  ttl    = 60
}
