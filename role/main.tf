data "terraform_remote_state" "database_connection" {
  backend = "remote"
  config = {
    organization = var.tfc_org
    workspaces = {
      name = var.vault_database_connection_workspace
    }
  }
}

resource "vault_database_secret_backend_role" "role" {
  backend             = data.terraform_remote_state.database_connection.outputs.vault_db_path
  name                = var.role
  db_name             = data.terraform_remote_state.database_connection.outputs.vault_database_connection
  creation_statements = ["CREATE ROLE \"{{name}}\" WITH LOGIN PASSWORD '{{password}}' VALID UNTIL '{{expiration}}';"]
}
