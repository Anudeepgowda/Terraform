variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default = "192.168.0.0/16"
}

variable "private_subnets" {
  description = "Subnets CIDR"
  type        = list(string)
  default = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"] 
}

variable "public_subnets" {
  description = "Subnets CIDR"
  type        = list(string)
  default = ["192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"] 
}

variable "environment" {
  description = "environment type"
  type = string
  default = "dev"
}

variable "eks_cluster_name" {
  description = "cluster name"
  type = string
    default = "dev-cosmos"

}

variable "eks_cluster_version" {
  description = "eks cluster version"
  type = string
  default = "1.28"
}

variable "default_node_enabled" {
  description = "enable default"
  type = bool
  default = false
  
}

# variable "eks_node_group_name" {
#   description = "eks node grpoup name"
#   type = string
# }