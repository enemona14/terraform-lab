terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "project-mona-443319"
  credentials = file("project-mona-443319-c6c236f5c799.json")
}