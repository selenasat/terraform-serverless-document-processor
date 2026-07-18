# Automatically zip up your Python code directory
data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "${path.module}/src"
  output_path = "${path.module}/lambda_function.zip"
}

# Provision the actual Lambda function and upload the Python zip file
resource "aws_lambda_function" "processor_lambda" {
  filename         = data.archive_file.lambda_zip.output_path
  function_name    = "document-processor-function"
  role             = aws_iam_role.lambda_role.arn
  handler          = "lambda_function.lambda_handler" # Looks for lambda_function.py -> lambda_handler()
  runtime          = "python3.11"
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
}