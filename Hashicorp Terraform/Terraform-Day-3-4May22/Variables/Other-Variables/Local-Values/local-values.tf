# Mandatory Labels for the Environment
locals {
  mandatory_labels = {
    owner                     = "operations-team"
    application-id            = "cg468"
    environment               = "dev"
    budget-code               = "cg-denpha-dev"
    patch-group               = "pg-dev"
    compliance-classification = "nist"
    data-classification       = "pii"
    lob                       = "e-commerce"
    project-manager           = "alexander-dirus"
    project                   = "denpha-project"
  }
}

# Dev Environment Labels
locals {
  dev_labels = {
    owner                     = "operations-team"
    application-id            = "cg468"
    environment               = "dev"
    budget-code               = "cg-denpha-dev"
    patch-group               = "pg-dev"
    compliance-classification = "nist"
    data-classification       = "pii"
    lob                       = "e-commerce"
    project-manager           = "alexander-dirus"
  }
}

# UAT Environment Labels
locals {
  uat_labels = {
    owner                     = "operations-team"
    application-id            = "cg468"
    environment               = "uat"
    budget-code               = "cg-denpha-uat"
    patch-group               = "pg-uat"
    compliance-classification = "nist"
    data-classification       = "pii"
    lob                       = "e-commerce"
    project-manager           = "alexander-dirus"
  }
}

# Pre-Prod Environment Labels
locals {
  pre_prod_labels = {
    owner                     = "operations-team"
    application-id            = "cg468"
    environment               = "pre-prod"
    budget-code               = "cg-denpha-pre-prod"
    patch-group               = "pg-pre-prod"
    compliance-classification = "nist"
    data-classification       = "pii"
    lob                       = "e-commerce"
    project-manager           = "alexander-dirus"
  }
}

# Prod Environment Labels
locals {
  prod_labels = {
    owner                     = "operations-team"
    application-id            = "cg468"
    environment               = "prod"
    budget-code               = "cg-denpha-prod"
    patch-group               = "pg-prod"
    compliance-classification = "nist"
    data-classification       = "pii"
    lob                       = "e-commerce"
    project-manager           = "alexander-dirus"
  }
}

# Disaster Recovery Environment Labels
locals {
  dr_labels = {
    owner                     = "operations-team"
    application-id            = "cg468"
    environment               = "dr"
    budget-code               = "cg-denpha-dr"
    patch-group               = "pg-dr"
    compliance-classification = "nist"
    data-classification       = "pii"
    lob                       = "e-commerce"
    project-manager           = "alexander-dirus"
  }
}