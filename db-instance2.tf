resource "google_sql_database_instance" "instance_europe" {
  name             = "mysql-db-europe"
  region           = "europe-west1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}