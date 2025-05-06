variable "server_type" {
  description = "The server type to use"
  type        = string
}

variable "location" {
  description = "The location of the server"
  type        = string
}

variable "domain_name" {
  description = "The domain that the server will be hosted under"
  type        = string
}

variable "git_source" {
  description = "Git repository to use as source repo"
  type        = string
}

variable "compose_path" {
  description = "Path to the compose file inside the repo"
  type        = string
}

variable "update_interval" {
  description = "How often the server will sync with the repo"
  type        = string
}
