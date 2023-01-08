include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

terraform {
  source = "../../modules//iam/"
}

# Indicate the input values to use for the variables of the module.
inputs = {
      name               = "Demo"
}