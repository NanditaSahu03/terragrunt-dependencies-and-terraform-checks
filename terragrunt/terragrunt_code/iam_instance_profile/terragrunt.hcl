include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

terraform {
  source = "../../modules//iam_instance_profile/"
}

dependency "iam_instance_profile" {
    config_path = "../iam"
     mock_outputs = {
       iam_role_name = "sample-role-name"
     }
}

# Indicate the input values to use for the variables of the module.
inputs = {
      name               = "Demo"
      iam_role           = dependency.iam_instance_profile.outputs.iam_role_name
}