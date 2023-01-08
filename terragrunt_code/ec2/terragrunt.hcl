include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

terraform {
  source = "../../modules//ec2/"
}

dependency "security_group" {
  config_path  = "../security_group"
  mock_outputs        = {
    security_group_id = "sample-sg"
    }
}

dependency "iam_instance_profile" {
  config_path = "../iam_instance_profile"
   mock_outputs = {
      instance_profile_name = "sample-instance-profile-name"
   }
}


# Indicate the input values to use for the variables of the module.
inputs = {
        name                   = "Demo"
        ami                    = "ami-0574da719dca65348"
        instance_type          = "t2.large"
        key_name               = "testkeypair"
        vpc_security_group_ids = [dependency.security_group.outputs.security_group_id]
        iam_instance_profile   = dependency.iam_instance_profile.outputs.instance_profile_name
}
