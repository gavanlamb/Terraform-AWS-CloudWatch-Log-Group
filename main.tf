resource "aws_cloudwatch_log_group" "logs" {
  name = "/aws/${var.resource_type}/${var.resource_name}"
  retention_in_days = var.log_group_retention
}
resource "aws_iam_policy" "logs" {
  name = "${var.resource_name}-${var.log_group_name}"
  description = "IAM policy for logging"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "${aws_cloudwatch_log_group.logs.arn}"
    }
  ]
}
EOF
}
resource "aws_iam_role_policy_attachment" "logs" {
  role = var.role_name
  policy_arn = aws_iam_policy.logs.arn
}