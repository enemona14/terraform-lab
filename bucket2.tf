resource "google_storage_bucket" "gcp-bucket-europe" {
  name     = "nexedge-bucket-mona123456-europe"
  location = "EUROPE"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}