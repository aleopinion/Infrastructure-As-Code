module "projects_iam_bindings" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 6.4"

  projects = ["inductive-vista-369105"]

  bindings = {
    "roles/storage.admin" = [
      "user:gcpopinion@gmail.com",
    ]

    "roles/compute.networkAdmin" = [
      "user:gcpopinion@gmail.com",
    ]
  }
} 


# Original IAM Module that was copied before updating
/*module "projects_iam_bindings" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 6.4"

  projects = ["project-123456", "project-9876543"]

  bindings = {
    "roles/storage.admin" = [
      "group:test_sa_group@lnescidev.com",
      "user:someone@google.com",
    ]

    "roles/compute.networkAdmin" = [
      "group:test_sa_group@lnescidev.com",
      "user:someone@google.com",
    ]

    "roles/compute.imageUser" = [
      "user:someone@google.com",
    ]
  }
}*/