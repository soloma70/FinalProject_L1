output "WebApp_Instance_ID" {
  value = aws_instance.webapp_blog.id
}

output "WebApp_SG_ID" {
  value = aws_security_group.webapp_blog.id
}

output "S3_Bucket_Cred" {
  value = data.aws_arn.s3_webapp_blog.resource
}

output "R53_hosted_zone" {
  value = data.aws_route53_zone.webapp_blog.name
}

output "Elastic_IP" {
  value = aws_eip.webapp_blog.public_ip
}