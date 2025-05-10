resource "google_sql_database_instance" "instance" {
  name             = "mysql-db"
  region           = "us-central1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}

resource "google_sql_database_instance" "instance_europe" {
  name             = "mysql-db-europe"
  region           = "europe-west1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}


resource "google_sql_database_instance" "instance_asia" {
  name              = "postgres-db"
  region            = "asia-southeast1"
  database_version = "POSTGRES_15" 
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = "false"
}