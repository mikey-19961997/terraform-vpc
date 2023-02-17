resource "aws_db_subnet_group" "dbsubnetgroup" {
    name = "mikeydbsubnetgroup"
    subnet_ids = [module.vpc.private_subnets[0].id,module.vpc.private_subnets[1].id]
}


