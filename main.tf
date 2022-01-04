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
resource "tfe_workspace" "test" {
  count        = length(var.workspaces)
  name         = "dev-${var.workspaces[count.index]}"
  organization = var.org
  tag_names    = ["tfc", "automation"]
}

/* add for teams
resource "tfe_team" "test" {
  name         = "my-team-name"
  organization = var.org
}

resource "tfe_team_access" "test" {
  access       = "read"
  team_id      = tfe_team.test.id
  workspace_id = tfe_workspace.test[count.index]
}
 */