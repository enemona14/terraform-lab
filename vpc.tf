resource "google_compute_network" "vpc-network" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet_2" {
  name          = "my-subnet-2"
  ip_cidr_range = "10.1.0.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet_3" {
  name          = "my-subnet-3"
  ip_cidr_range = "10.2.0.0/24"
  region        = "asia-southeast1"
  network       = google_compute_network.vpc-network.id
}

# Firewall Rule for HTTP traffic
resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = google_compute_network.vpc-network.id  # Reference the VPC network

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]  # Allow traffic from all IPs
}

# Firewall Rule for HTTPS traffic
resource "google_compute_firewall" "allow_https" {
  name    = "allow-https"
  network = google_compute_network.vpc-network.id  # Reference the VPC network

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]  # Allow traffic from all IPs
}
