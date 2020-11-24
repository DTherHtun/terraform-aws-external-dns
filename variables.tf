variable "k8s_namespace" {
  description = "Kubernetes namespace to deploy the AWS External DNS into."
  type        = string
  default     = "kube-system"
}

variable "k8s_replicas" {
  description = "Amount of replicas to be created."
  type        = number
  default     = 1
}

variable "k8s_pod_labels" {
  description = "Additional labels to be added to the Pods."
  type        = map(string)
  default     = {}
}

variable "domain" {
  description = "Additional labels to be added to the Pods."
  type        = list(string)
}

variable "external_dns_version" {
  description = "The AWS External DNS version to use. See https://github.com/kubernetes-sigs/external-dns/releases for available versions"
  type        = string
  default     = "0.7.4"
}

variable "aws_iam_role_for_policy" {
  description = "AWS role name for attaching IAM policy"
  type        = string
  default     = null
}
