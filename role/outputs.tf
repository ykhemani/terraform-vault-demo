output "creds_path" {
  value = "${data.terraform_remote_state.database_connection.outputs.vault_db_path}/creds/${vault_database_secret_backend_role.role.name}"
}