provider "kubernetes" {
  host                   = data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}

resource "kubernetes_namespace" "fiap_x_namespace" {
  metadata {
    name = local.namespace_fiap_x
  }

  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_secret" "fiap_x_secret" {
  metadata {
    name      = "fiap-x-app-secrets"
    namespace = kubernetes_namespace.fiap_x_namespace.metadata[0].name
  }

  data = {
    AWS_ACCESS_KEY_ID         = var.aws_access_key_id
    AWS_SECRET_ACCESS_KEY     = var.aws_secret_access_key
    AWS_SESSION_TOKEN         = var.aws_session_token
    MONGODB_CONNECTION_STRING = var.mongodb_connection_string
    JWT_SECRET                = var.jwt_secret
    QUEUE_URL                 = var.queue_url
  }

  type       = "Opaque"
  depends_on = [kubernetes_namespace.fiap_x_namespace]
}

resource "kubernetes_namespace" "fiap_x_job_creator_namespace" {
  metadata {
    name = local.namespace_fiap_x_job_creator
  }

  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_secret" "fiap_x_job_creator_secret" {
  metadata {
    name      = "fiap-x-job-creator-app-secrets"
    namespace = kubernetes_namespace.fiap_x_job_creator_namespace.metadata[0].name
  }

  data = {
    AWS_ACCESS_KEY_ID         = var.aws_access_key_id
    AWS_SECRET_ACCESS_KEY     = var.aws_secret_access_key
    AWS_SESSION_TOKEN         = var.aws_session_token
    AWS_ACCESS_KEY_ID_SES     = var.aws_access_key_id_ses
    AWS_SECRET_ACCESS_KEY_SES = var.aws_secret_access_key_ses
    MONGODB_CONNECTION_STRING = var.mongodb_connection_string
    MONGODB_DB_NAME           = var.mongodb_db_name
    QUEUE_URL                 = var.queue_url
  }

  type       = "Opaque"
  depends_on = [kubernetes_namespace.fiap_x_job_creator_namespace]
}

resource "kubernetes_secret" "default_secret" {
  metadata {
    name      = "default-secrets"
    namespace = "default"
  }

  data = {
    AWS_ACCESS_KEY_ID     = var.aws_access_key_id
    AWS_SECRET_ACCESS_KEY = var.aws_secret_access_key
    AWS_SESSION_TOKEN     = var.aws_session_token
  }

  type = "Opaque"
}
