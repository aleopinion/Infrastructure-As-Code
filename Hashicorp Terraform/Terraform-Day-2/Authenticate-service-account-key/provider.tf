# Declaring the Terraform Block and the Provider Block / configuration

# Terraform Block
terraform {
  required_version = "1.3.6"
  required_providers {
    google = {
      source = "hashicorp/google"        #The Hashicorp Registry
      version = "4.46.0"                 #You can define any version of your choice based on the need of your environment
    }
  }
}

# Provider Block / Configuration
provider "google" {
  project     = "inductive-vista-369105"
  region      = "us-central1"            #Region where you want to create the reources
  credentials = "authenticate-service-account-key.json"
}


/*terraform {
  required_version = "1.3.6"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.46.0"
    }
  }
}

provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}*/