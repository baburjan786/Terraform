variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-97785bed" # ubuntu 14.04 LTS
        us-east-2 = "ami-f63b1193" # ubuntu 14.04 LTS
        us-west-1 = "ami-824c4ee2" # ubuntu 14.04 LTS
        us-west-2 = "ami-f2d3638a" # ubuntu 14.04 LTS
    }
}
varibale "vpc_cidr" {}
varibale "vpc_name" {}
varibale "IGW_name" {}
varibale "key_name" {}
varibale "public_subnet1_cidr" {}
varibale "public_subnet2_cidr" {}
varibale "public_subnet3_cidr" {}
varibale "private_subnet_cidr" {}
varibale "public_subnet1_name" {}
varibale "public_subnet2_name" {}
varibale "public_subnet3_name" {}
varibale "private_subnet_name" {}
varibale Main_Routing_Table {}
variable "azs" {
    description = "Run the EC2 Instance in these Availability Zones"
    type = "list"
    default = ["us-east-1a", "us-east-1c"]
    }
varibale "environment" {default = "dev"}
variable "instance_type" {
    type = "map"
    default = {
        dev = "t2.nano"
        test = "t2.micro"
        prod = "t2.medium"
    }
}