region = "us-east-1"
vpc_details = {
    Name = "mikey1"
    cidr_block = "192.168.0.0/16"
}

subnet_details = {
    azs = ["us-east-1a","us-east-1b"]
    private_subnets = ["192.168.0.0/24","192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
    public_subnets = ["192.168.4.0/24,192.168.5.0/24"]
}

subnet_details1 = {
    Name = ["s1","s2","s3","s4"]
}