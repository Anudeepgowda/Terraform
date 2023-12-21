module "eks_managed_node_groups" {
  source = "terraform-aws-modules/eks/aws"
    //cluster_name = "test"
   eks_managed_node_groups = {
    custom_node = {
     min_size = 1
    max_size = 2
    desired_size = 1
    instance_types = [t2.micro]
    instance_name = "dev-cluster"
    }
    

    labels = {
        Environment = var.environment
    }
   }
   
   

    tags = {
        Environment = var.environment
        Terraform = true
    }

  
}