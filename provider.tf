# Setting up required providers.
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

# Applying credentials.
provider "google" {
  project     = "dusty-class-6-5-carlton-quaye"
  region      = "us-central1"
  credentials = "*"
}