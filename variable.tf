variable "hostname" {
  type          = string
  description   = "TFC host"
  default       = "app.terraform.io"
}
variable "token" {
  type          = string
  description   = "The access key for TFC, ENV in workspace used to provision other workspaces"
  sensitive     = true
}
variable "org" {
  type          = string
  description   = "Your TFC Org Name, add in automtion Workspace"
}
variable "workspaces" {
  description = "list of workspaces to create"
  type        = list(string)
  default = ["workspace-1", "workspace-2", "workspace-3"]
}