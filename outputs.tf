output "ip_address" {
  value       = digitalocean_droplet.workstream.ipv4_address
  description = "The IP address of the droplet"
}

output "workstream_url" {
  value = digitalocean_record.workstream.domain
}
