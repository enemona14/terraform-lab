resource "google_storage_bucket" "gcp-bucket-asia" {
  name     = "nexedge-bucket-mona123456-asia"
  location = "ASIA"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}