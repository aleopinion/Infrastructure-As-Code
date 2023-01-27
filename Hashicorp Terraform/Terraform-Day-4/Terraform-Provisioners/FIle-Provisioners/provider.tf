# Declaring the Terraform Block and the Provider Block / configuration
# Terraform Block
terraform {
  required_version = "1.1.9"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.18.0"
    }
  }
}
# Provider Block / Configuration
provider "google" {
  project = "inductive-vista-369105"
  region  = "us-central1"
}   