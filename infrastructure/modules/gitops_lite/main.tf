resource "hcloud_server" "server" {
  name        = "gitops-server"
  image       = "debian-12"
  server_type = var.server_type
  location    = var.location

  user_data = templatefile("${path.module}/cloud-init.tftpl", {
    ssh_public_key   = file("${path.root}/id_rsa.pub")
    git_source       = var.git_source
    compose_path     = var.compose_path # TODO! Not working
    refresh_interval = var.update_interval
    domain_name      = var.domain_name
    hostname         = "gitops-server"
  })

  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
}
