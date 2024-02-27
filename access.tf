resource "aws_iam_role_policy_attachment" "access" {
  role       = var.app_metadata["role_name"]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
}

resource "aws_iam_role_policy_attachment" "update-api" {
  role       = var.app_metadata["role_name"]
  policy_arn = aws_iam_policy.update-api.arn
}


resource "aws_iam_policy" "update-api" {
  name        = "enable-association"
  description = "Policy to enable api association with appsync domain"
  policy      = data.aws_iam_policy_document.update-api.json
}

data "aws_iam_policy_document" "update-api" {
  statement {
    sid    = "UpdateApi"
    effect = "Allow"

    actions = [
      "appsync:UpdateGraphqlApi",
    ]

    resources = ["*"]
  }
}
