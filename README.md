# Terraform Serverless Document Processor

A cloud engineering portfolio project that demonstrates Infrastructure as Code (IaC) by provisioning a serverless AWS document processing pipeline with Terraform. Documents uploaded to Amazon S3 trigger an AWS Lambda function, which processes the file, stores metadata in DynamoDB, and sends notifications through Amazon SNS. The project also includes a GitHub Actions CI/CD pipeline for automated validation and deployment.

## Technologies

- Terraform
- AWS Lambda
- Amazon S3
- Amazon DynamoDB
- Amazon SNS
- AWS IAM
- Amazon CloudWatch
- Python
- GitHub Actions
