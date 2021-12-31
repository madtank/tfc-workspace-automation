#for provisioning tfc
#https://registry.terraform.io/providers/hashicorp/tfe/latest
#https://registry.terraform.io/providers/hashicorp/tfe/latest/docs

  terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.27.0"
    }
  }
}

#pass the creds
provider "tfe" {
  hostname = var.hostname
  token    = var.token
}

#create a workspace
resource "tfe_workspace" "workspace-automation" {
  name         = "maddog99-automated-workspace"
  organization = var.org
  tag_names    = ["test", "app"]
}