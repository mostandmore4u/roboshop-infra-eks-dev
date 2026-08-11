module "vpc" {
    source = "git::https://github.com/mostandmore4u/terraform-aws-vpc.git?ref=main" #"git::https://github.com/daws-90s/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = false
}