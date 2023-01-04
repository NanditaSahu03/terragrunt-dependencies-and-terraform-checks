variable "name" { 
  type    =  string
  default = ""
}

variable "cidr_blocks" {
  type    = list(string)
  default = []
}