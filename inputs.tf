variable "region" {
    type = string
}
variable "vpc_details" {
    type = object({
        cidr_block = string
        Name = string
    })
}

variable "subnet_details" {
    type = object({
        azs = list(string)
        private_subnets = list(string)
        public_subnets = list(string)
    })
}
