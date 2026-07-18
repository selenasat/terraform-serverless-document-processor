/*
Create an S3 bucket for storing documents
This bucket will be used to store documents for the serverless document processor
*/
resource "aws_s3_bucket" "documents" {
  bucket = "selena-sat-serverless-document-processor-2026"
}

/*
Enable versioning on the S3 bucket
Versioning allows you to preserve, retrieve, and restore every version of every object stored in the bucket
This is useful for protecting against accidental deletions and enabling rollback capabilities
*/
resource "aws_s3_bucket_versioning" "documents_versioning" {
  bucket = aws_s3_bucket.documents.id

  /*
  Sets versioning status to Enabled
  */
  versioning_configuration {
    status = "Enabled"
  }
}  

/* 
Enables default 256-bit AES encryption for your S3 bucket
*/
resource "aws_s3_bucket_server_side_encryption_configuration" "documents_encryption" {
  bucket = aws_s3_bucket.documents.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}