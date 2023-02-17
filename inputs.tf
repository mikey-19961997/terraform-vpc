variable "region" {
    type = string
}
variable "vpc_details" {
    type = object({
        cidr_block = list(string)
        Name = list(string)
    })
}

variable "subnet_details" {
    type = object({
        azs = list(string)
        private_subnets = list(string)
        public_subnets = list(string)
    })
}

variable "subnet_details1" {
    type = object({
        Name = list(string)
    })
}