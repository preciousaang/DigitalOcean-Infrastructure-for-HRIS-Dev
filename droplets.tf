resource "digitalocean_droplet" "workstream" {
  image     = "ubuntu-20-04-x64"
  name      = "workstream-staging"
  region    = "nyc3"
  size      = "s-1vcpu-1gb"
  ssh_keys  = ["34648759", "30878420"]
  tags      = ["workstream", "workstream-staging", "workstream-test"]
  user_data = file("setups/user_data.yml")
}
