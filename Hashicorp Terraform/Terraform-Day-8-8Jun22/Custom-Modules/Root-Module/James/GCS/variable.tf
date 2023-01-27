   # Variable 1: Buket Name
variable "bucket_name" {
        description = "Provide development bucket name"
        type        = string
        default     = "dev-james-bucket-45"
}

# Variable 2: Bucket Location
variable "location" {
    description = "Provide development bucket location"
    type        = string
    default     = "US"
}

# Variable 3: Bucket Force Destroy
variable "force_destroy" {
        description = "Provide development bucket force location state"
        type        = bool
        default     = true
}

# Variable 4: Bucket Storage Class
variable "storage_class" {
        description = "Provide development bucket storage class"
        type        = string
        default     = "STANDARD"
}

# Variable 5: Bucket Project ID
variable "project_id" {
        description = "Provide development bucket project id"
        type        = string
        default     = "inductive-vista-369105"
}

# Variable 6: Developer Bucket Region
variable "region" {
        description = "Provide development bucket region"
        type        = string
        default     = "us-central1"
}


# The Original Resource declarations reduced to the expressions below
/*
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true
  storage_class = ""
  project       = ""*/   

# The Original Resource declarations from Terraform Browser
  /*resource "google_storage_bucket" "static-site" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}*/  