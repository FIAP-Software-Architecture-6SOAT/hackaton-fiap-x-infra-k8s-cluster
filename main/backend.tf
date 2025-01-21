terraform {
  backend "gcs" {
    bucket      = "lanchonete-terraform-backend"
    prefix      = "infra_cluster_hackaton/terraform.tfstate"
    credentials = "./terraform-key.json"
  }
}
