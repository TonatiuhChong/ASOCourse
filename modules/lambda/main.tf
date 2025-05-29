resource "aws_lambda_function" "my_lambda" {
  filename         = "${path.module}/get_lambda.zip"
  function_name    = "ExecTwo"
  role             = var.lambda_exec_role_arn
  handler          = "get.handler"
  runtime          = "nodejs18.x"
  source_code_hash = filebase64sha256("${path.module}/get_lambda.zip")
}



