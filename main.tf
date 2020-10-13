terraform {
  backend "remote" {
    organization = "hashicorp-learn"

    workspaces {
      name = "learn-terraform-pipelines-k8s"
      name = "georges-m-consul"
      name = "georges-m-k8s"
      name = "georges-m-vault"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
