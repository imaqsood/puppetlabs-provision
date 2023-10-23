# Terraform setup stuff, required providers, where they are sourced from, and
# the provider's configuration requirements.
provider "aws" {
  region = var.region
  profile = var.profile
  default_tags {
    tags = var.tags
  }
}

# Sets the variables that'll be interpolated to determine where variables are
# located in the hierarchy
# provider "hiera5" {
#   config = "~/common.yaml"
# }

# data "hiera5" "node_count" {
#   key = "node_count"
# }

# data "hiera5" "subnet_ids" {
#   key = "subnet_ids"
# }

# data "hiera5" "security_group_ids" {
#   key = "security_group_ids"
# }

# data "hiera5" "ssh_key" {
#   key = "ssh_key"
# }

# data "hiera5" "user" {
#   key = "user"
# }

# data "hiera5" "image" {
#   key = "image"
# }

# Contain all the instances configuration for readability
# 
module "instances" {
  name               = var.name
  source             = "./modules/instances"
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  user               = var.user
  ssh_key            = var.ssh_key
  node_count         = var.node_count
  image              = var.image
  tags               = var.tags
}
