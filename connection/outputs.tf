output "vault_db_path" {
  value = vault_mount.postgres.path
}

output "vault_database_connection" {
  value = vault_database_secret_backend_connection.postgres.name
}