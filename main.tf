resource "aws_vpc" "myvpc" {
    count = length(var.vpc_details.Name)
    cidr_block = var.vpc_details.cidr_block[count.index]
    tags = {
        Name = var.vpc_details.Name[count.index]
    }
}

resource "aws_subnet" "subnets" {
    count = length(var.subnet_details.Name)
    vpc_id = aws_vpc.myvpc.id
    cidr_block = cidrsubnet(var.vpc_details.cidr_block[0],8,count.index)
    tags = {
        Name = var.subnet_details.Name[count.index]
    }
}

resource "aws_subnet" "subnets2" {
    count = length(var.subnet_details1.Name)
    vpc_id = aws_vpc.myvpc.id
    cidr_block = cidrsubnet(var.vpc_details.cidr_block[1],8,count.index)
    tags = {
        Name = var.subnet_details1.Name[count.index]
    }
}