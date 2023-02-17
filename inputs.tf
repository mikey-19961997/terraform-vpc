variable "vpc_details" {
    type = object({
        cidr_block = list(string)
        Name = list(string)
    })
}

variable "subnet_details" {
    type = object({
        Name = list(string)
    })
}

variable "subnet_details1" {
    type = object({
        Name = list(string)
    })
}