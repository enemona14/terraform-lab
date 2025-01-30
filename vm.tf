resource "google_compute_instance" "test-vm" {
  name         = "my-vm-us"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = "my-subnet"

    access_config {  
    }
  }
}

resource "google_compute_instance" "test-vm2" {
  name         = "my-vm-eu"
  machine_type = "e2-micro"          
  zone         = "europe-west1-b"

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

resource "google_compute_instance" "test-vm3" {
  name         = "my-vm-asia"
  machine_type = "e2-micro"          
  zone         = "asia-southeast1-b"

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


