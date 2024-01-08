module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name    = var.eks_cluster_name
  cluster_version = var.eks_cluster_version

  cluster_endpoint_public_access = false

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_addons ={
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }
  #    eks_managed_node_groups = {
  #   nodes = {
  #     min_size     = 1
  #     max_size     = 3
  #     desired_size = 1

  #     instance_type = ["t2.micro"]
      
  #   }
  # }

  # depends_on = [ aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
  # aws_iam_role_policy_attachment.AmazonEKSServicePolicy ]

  //eks_managed_node_groups = module.eks_managed_node_groups

  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}