output "s3_bucket_arn" {
  value = "${aws_s3_bucket.manage_state_bucket.arn}"
}
