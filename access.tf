resource "aws_iam_role_policy_attachment" "access" {
  role       = var.app_metadata["role_name"]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
}
