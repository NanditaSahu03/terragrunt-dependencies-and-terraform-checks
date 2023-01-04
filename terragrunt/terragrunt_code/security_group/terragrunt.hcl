include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

terraform {
  source = "../../modules//security_group/"
}

# Indicate the input values to use for the variables of the module.
inputs = {
      name           = "Demo"
      cidr_blocks    = ["24.239.131.31/32","24.239.131.30/32"]
}