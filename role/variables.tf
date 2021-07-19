variable "tfc_org" {
  type        = string
  description = "Terraform Cloud organization for remote state access."
}

variable "vault_database_connection_workspace" {
  type        = string
  description = "Terraform Cloud workspace for remote state access to database connection."
  default     = "demo-terraform-vault-database-connection"
}

variable "role" {
  type        = string
  description = "Vault database role name."
  default     = "role_1"
}
