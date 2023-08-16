resource "digitalocean_domain" "www" {
  name = "agz.com.ng"
}

resource "digitalocean_record" "workstream" {
  domain = digitalocean_domain.www.id
  type   = "A"
  name   = "workstream"
  value  = digitalocean_droplet.workstream.ipv4_address
  ttl    = 30
}
