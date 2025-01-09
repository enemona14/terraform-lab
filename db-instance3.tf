resource "google_sql_database_instance" "instance_asia" {
  name              = "postgres-db"
  region            = "asia-southeast1"
  database_version = "POSTGRES_15" 
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = "false"
}