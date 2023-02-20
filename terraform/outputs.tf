output "ami_image_id" {
  value = data.aws_ami.latest_ubuntu.image_id
}

output "ami_image_name" {
  value = data.aws_ami.latest_ubuntu.name
}

output "webapp_server_ip" {
  value = aws_eip.webapp_blog.public_ip
}

output "webapp_instance_id" {
  value = aws_instance.webapp_blog.id
}

output "webapp_sg_id" {
  value = aws_security_group.webapp_blog.id
}
