variable "mrlpa_content_container_sha_digest" {
  type        = string
  description = "The SHA256 digest of the container image to deploy"
}

variable "mrlpa_content_repository_url" {
  type        = string
  description = "The URL of the ECR repository containing the container image to deploy"
}

variable "ingress_allow_list_cidr" {
  type        = list(string)
  description = "The CIDR blocks to allow traffic from"
}

variable "iam_roles" {
  type = object({
    ecs_execution_role = any
    app_ecs_task_role  = any
  })
  description = "ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services."
}
