resource "vault_mount" "postgres" {
  path = var.secret_engine_mount
  type = var.secret_engine_type
}

locals {
  connection_url = "postgres://${var.postgres_vault_dba_user}:${var.postgres_vault_dba_password}@${var.postgres_server}:${var.postgres_port}/${var.postgres_database}?sslmode=disable"
}

resource "vault_database_secret_backend_connection" "postgres" {
  backend       = vault_mount.postgres.path
  name          = var.db_connection_name
  allowed_roles = var.db_allowed_roles

  postgresql {
    connection_url = local.connection_url
  }
}
