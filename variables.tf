variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "private_subnets" {
  description = "Subnets CIDR"
  type        = list(string)
}

variable "public_subnets" {
  description = "Subnets CIDR"
  type        = list(string)
}

variable "environment" {
  description = "environment type"
  type = string
}

variable "eks_cluster_name" {
  description = "cluster name"
  type = string
}

variable "eks_cluster_version" {
  description = "eks cluster version"
  type = string
}