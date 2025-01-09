resource "google_compute_instance" "test-vm2" {
  name         = "my-vm-europe"
  machine_type = "e2-micro"          
  zone         = "europe-west1"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = "my-subnet-2"

    access_config {  
    }
  }
}

