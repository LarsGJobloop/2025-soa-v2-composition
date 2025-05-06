module "gitops_lite" {
  source = "../../modules/gitops_lite"

  server_type     = "cax21"
  location        = "hel1"
  domain_name     = "my-domain.com"
  git_source      = "https://github.com/LarsGJobloop/2025-soa-v2-composition"
  compose_path    = "./compose.yaml"
  update_interval = "*/1 * * * *"
}

output "name" {
  value = module.gitops_lite.server_ip
}
