# Cluster EKS
Projeto do curso de pós graduação da FIAP

Esse repositório é referente ao provisionamento do cluster do EKS da AWS gerenciado pelo Terraform.
<p>Ele é responsável por toda a infraestrutura utilizada pelo cluster, como vpc, subnets, etc.</p>
<p>Para gerenciamento do tfstate foi utilizado um bucket no Cloud Storage do Google Cloud Platform.</p>

## Secrets
Secrets cadastradas no repositório do GitHub

```bash
TF_VAR_ROLE_ARN
AWS_REGION
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_SESSION_TOKEN
GCP_SA_KEY
MONGODB_CONNECTION_STRING
SQS_QUEUE_URL
```