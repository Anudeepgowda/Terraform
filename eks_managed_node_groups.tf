module "eks_managed_node_groups" {
    source = "terraform-aws-modules/alb/aws//modules/eks-managed-node-group"
    name = "test"
    min_size = 1
    max_size = 2
    desired_size = 1
    instance_types = [t2.micro]
    labels = {
        Environment = var.environment
    }

    tags = {
        Environment = var.environment
        Terraform = true
    }

  
}