resource "aws_s3_bucket" "bucket" {
  tags = {
    Stack_Name        = var.stack_name
  }
  
}
