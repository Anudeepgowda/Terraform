module "eks_add_ons" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name = var.eks_cluster_name
  cluster_addons = {
    kube-proxy = {
        enabled = true
    },
    vpc-cni = {
        enabled = true
    },
    coredns = {
        enabled = true
    }
  }
    subnet_ids = module.vpc.private_subnets


  tags = {
        Environment = var.environment
        Terraform = true
    }
  
}