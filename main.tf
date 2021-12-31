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
  count        = length(var.workspaces)
  name         = var.workspaces[count.index]
  organization = var.org
  tag_names    = ["tfc", "automation"]
}