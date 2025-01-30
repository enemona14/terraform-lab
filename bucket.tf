resource "google_storage_bucket" "gcp-bucket" {
  name     = "nexedge-bucket-mona123456"
  location = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket-europe" {
  name     = "nexedge-bucket-mona122222"
  location = "EUROPE-WEST1"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket-asia" {
  name     = "nexedge-bucket-mona133333"
  location = "ASIA"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}
