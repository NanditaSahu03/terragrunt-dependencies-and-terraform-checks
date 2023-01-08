variable "name" { 
  type    =  string
  default = ""
}

variable "ami" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = ""
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}

variable "iam_instance_profile" {
  type    = string
  default = ""
}

variable "key_name" {
  type    = string
  default = ""
}