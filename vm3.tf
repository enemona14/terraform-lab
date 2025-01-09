resource "google_compute_instance" "test-vm3" {
  name         = "my-vm-asia"
  machine_type = "e2-micro"          
  zone         = "asia-southeast1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = "my-subnet-3"

    access_config {  
    }
  }
}

