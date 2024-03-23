locals {
  bucket_name = "techstarter-04-hlkafhuuuldsafb32rui8247"
}

resource "aws_iam_user" "user" {
  name = "techstarter_04"
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.user.name
}

resource "aws_iam_user_policy" "user_policy" {
  name = "techstarter_04_policy"
  user = aws_iam_user.user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "s3:*"
        Resource = [
          "arn:aws:s3:::${local.bucket_name}",
          "arn:aws:s3:::${local.bucket_name}/*",
        ]
      },
    ]
  })
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name
}
