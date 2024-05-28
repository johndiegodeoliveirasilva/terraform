terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.30.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project
  region = var.region
  credentials = file(var.credentials_file)
  zone = var.zone
}

