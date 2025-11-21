output "app_public_ip" {
   value = aws_instance.app.public_ip
}

output "app_instance_id" {
   value = aws_instance.app.id
}

output "s3_bucket" {
   value = aws_s3_bucket.app_bucket.bucket
}
  
