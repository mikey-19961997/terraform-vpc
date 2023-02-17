resource "aws_db_subnet_group" "dbsubnetgroup" {
    name = "mikeydbsubnetgroup"
    subnet_ids = [module.vpc.private_subnets[0],module.vpc.private_subnets[1]]
}


