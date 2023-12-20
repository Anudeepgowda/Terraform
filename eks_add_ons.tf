module "eks_add_ons" {
  source = "terraform-aws-modules/eks/aws//modules/eks-addon-manager"
  cluster_name = var.eks_cluster_name
  addons = {
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

  tags = {
        Environment = var.environment
        Terraform = true
    }
  
}