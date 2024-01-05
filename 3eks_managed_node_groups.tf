module "eks_managed_node_groups" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name    = var.eks_cluster_name
   eks_managed_node_groups = {
    custom_node = {
    min_size = 1
    max_size = 2
    desired_size = 1
    instance_types = ["t2.micro"]
    instance_name = "dev-cluster"
    }
    
    labels = {
        Environment = var.environment
    }
   }
     subnet_ids = module.vpc.private_subnets

   

    tags = {
        Environment = var.environment
        Terraform = true
    }

  
}



# resource "aws_eks_node_group" "example_nodes" {
#   cluster_name    = var.eks_cluster_name
#   node_group_name = "example-node-group"
#   subnet_ids      = module.vpc.private_subnets
#   node_role_arn = aws_iam_role.example.arn

#   scaling_config {
#     min_size     = 1
#     max_size     = 2
#     desired_size = 1
#   }

#   instance_types = ["t2.micro"]
  
# }


