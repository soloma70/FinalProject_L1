provider "aws" {
  region = var.region
}

resource "aws_default_vpc" "default" {}

data "aws_ami" "latest_ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server*"]
  }
}

resource "aws_key_pair" "webapp_blog" {
  key_name   = "WebApp-Blog-Key"
  public_key = var.public_key
}

resource "aws_eip" "webapp_blog" {
  vpc      = true
  instance = aws_instance.webapp_blog.id
  tags = merge(var.common_tags, { Name = "IP-WebApp-Server-${var.common_tags["Env"]}" })
}

resource "aws_instance" "webapp_blog" {
  ami                    = data.aws_ami.latest_ubuntu.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webapp_blog.id]
  key_name               = aws_key_pair.webapp_blog.key_name
  monitoring             = var.enable_detailed_monitoring
  depends_on             = [aws_key_pair.webapp_blog]

  tags = merge(var.common_tags, { Name = "WebApp-Server-${var.common_tags["Env"]}" })
}

resource "aws_security_group" "webapp_blog" {
  name   = "SG WebApp Blog"
  vpc_id = aws_default_vpc.default.id

  dynamic "ingress" {
    for_each = var.allow_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.common_tags, { Name = "SG-WebApp-Server-${var.common_tags["Env"]}" })
}
