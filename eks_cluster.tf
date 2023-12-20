module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name    = var.eks_cluster_name
  cluster_version = var.eks_cluster_version

  cluster_endpoint_public_access = false

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = module.eks_managed_node_groups
  cluster_addons = module.eks_add_ons
  
  depends_on = [ aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
  aws_iam_role_policy_attachment.AmazonEKSServicePolicy ]

  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}