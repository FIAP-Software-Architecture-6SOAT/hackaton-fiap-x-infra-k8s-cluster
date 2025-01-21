resource "aws_eks_cluster" "eks" {
  name     = "${local.env}-${local.eks_name}"
  version  = local.eks_version
  role_arn = var.role_arn

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = true

    subnet_ids = [
      aws_subnet.private_zone1.id,
      aws_subnet.private_zone2.id,
      aws_subnet.public_zone1.id,
      aws_subnet.public_zone2.id
    ]
  }

  access_config {
    authentication_mode                         = "API"
    bootstrap_cluster_creator_admin_permissions = true
  }
}
