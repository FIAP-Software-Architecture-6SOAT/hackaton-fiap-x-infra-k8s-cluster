resource "aws_eks_node_group" "fiap_x_node_group" {
  cluster_name    = aws_eks_cluster.eks.name
  version         = local.eks_version
  node_group_name = "fiap_x_node_group"
  node_role_arn   = var.role_arn

  subnet_ids = [
    aws_subnet.private_zone1.id,
    aws_subnet.private_zone2.id
  ]

  instance_types = ["t3.large"]

  scaling_config {
    desired_size = 1
    max_size     = 5
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  labels = {
    role = "fiap_x_node_group"
  }

  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }

  tags = {
    Name = "fiap_x_node"
  }
}
