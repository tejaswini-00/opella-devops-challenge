locals {
  environment = "dev"
  location    = "East US"
  application = "opella"

  common_tags = {
    environment = local.environment
    application = local.application
    managed_by  = "terraform"
    owner       = "devops-team"
  }
}
