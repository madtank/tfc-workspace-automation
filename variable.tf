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
  description   = "Default Org"
  default       = "maddog99"
}