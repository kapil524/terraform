resource "aws_iam_user" "iam-users" {
  name = var.usernumber
  path = "/system"
}