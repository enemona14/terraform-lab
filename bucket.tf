resource "google_storage_bucket" "gcp-bucket" {
  name     = "nexedge-bucket-mona123456"
  location = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket-europe" {
  name     = "nexedge-bucket-mona123456-europe"
  location = "EUROPE"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket-asia" {
  name     = "nexedge-bucket-mona123456-asia"
  location = "ASIA"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
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