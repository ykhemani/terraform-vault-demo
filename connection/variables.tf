variable "secret_engine_mount" {
  type        = string
  description = "Vault secret engine mount path."
  default     = "postgres_demo"
}

variable "secret_engine_type" {
  type        = string
  description = "Vault secret engine mount type."
  default     = "database"
}

variable "postgres_vault_dba_user" {
  type        = string
  description = "Vault DBA user for creating dynamic users."
}

variable "postgres_vault_dba_password" {
  type        = string
  description = "Vault DBA user's password."
}

variable "postgres_server" {
  type        = string
  description = "Database server name."
}

variable "postgres_port" {
  type        = string
  description = "Port on which database is listening."
  default     = "5432"
}

variable "postgres_database" {
  type        = string
  description = "Postgres database name."
  default     = "postgres"
}

variable "db_connection_name" {
  type        = string
  description = "Postgres database connection name."
  default     = "pgdb_1"
}

variable "db_allowed_roles" {
  type        = list(string)
  description = "List of roles allowed to use this Postgres connection."
  default     = ["role_1", "role_2"]
}
