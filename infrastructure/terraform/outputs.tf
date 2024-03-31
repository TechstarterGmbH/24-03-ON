output "aws_access_key" {
  value = aws_iam_access_key.access_key.id
}

output "aws_secret_key" {
  value = aws_iam_access_key.access_key.secret
  sensitive = true
}

output "aws_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
