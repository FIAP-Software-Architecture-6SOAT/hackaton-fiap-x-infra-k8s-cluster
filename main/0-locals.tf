locals {
  env                          = "prod"
  region                       = "us-east-1"
  zone1                        = "us-east-1a"
  zone2                        = "us-east-1b"
  eks_name                     = "fiap-x-cluster"
  eks_version                  = "1.31"
  namespace_fiap_x             = "fiap-x"
  namespace_fiap_x_job_creator = "fiap-x-job-creator"
}
