resource "aws_iam_instance_profile" "test_profile" {
  name = "${var.name}-profile"
  role = var.iam_role
}