output "iam_role_name" {
  description = "Name of the role"
  value       = aws_iam_role.test_role.name
}