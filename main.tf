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
  name         = var.workspaces
  organization = var.org
  tag_names    = ["test", "app"]
}