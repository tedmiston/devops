# keeping these all private for now, but they look like this:
#
# resource "namecheap_domain_records" "example_com" {
#   domain = "example.com"

#   mode = "OVERWRITE"

#   email_type = "FWD"

#   record {
#     type = "CNAME"
#     hostname = "www"
#     address = "parkingpage.namecheap.com."
#     ttl = 1800
#   }

#   # 1800 seconds is namecheap's default, but TTL doesn't seem to work for URL
#   # Redirect Records anyway :/... or at least it doesn't show up in the GUI
#   # console
#   record {
#     type = "URL"
#     hostname = "@"
#     address = "http://www.example.com/"
#     ttl = 1800
#   }

#   # do NOT try to create TXT records here to mirror the built-in "mail settings"
#   # records... that does not seem to be supported :( and instead makes a
#   # duplicate record under "host records"
#   # record {
#   #   type = "TXT"
#   #   hostname = "@"
#   #   address = "v=spf1 include:spf.efwd.registrar-servers.com ~all"
#   #   ttl = 1800
#   # }
# }
