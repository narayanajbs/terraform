variable "vpc_cidr" {
    type = string
     default = "10.0.0.0/16"
}

variable "enable_hostname" {
    type = bool
    default = true
}

variable "common_tags" {
    default = {
    Poject = "roboshop"
    Environment = "dev"
    Terraform = "true"
    }
}
variable "vpc_tags" {
    default = {}
   }

variable "project_name" {
    default = "roboshop"
   }

   variable "environment" {
     default = "dev"
   }