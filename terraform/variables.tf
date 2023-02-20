variable "region" {
  description = "Enter AWS Region to deploy Server"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "Enter Instance Type"
  type        = string
  default     = "t2.micro"
}


variable "allow_ports" {
  description = "List of Ports to open for server"
  type        = list
  default     = ["80", "443", "22", "8080"]
}

variable "enable_detailed_monitoring" {
  type    = bool
  default = false
}

variable "common_tags" {
  description = "Common Tags to apply to all resources"
  type        = map
  default = {
    Owner       = "Soloma70"
    Project     = "Web_Blog"
    Env = "Prod"
  }
}

variable "public_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDeT8r14+8zCi3MEClO7iNdMNjOxUwsZrMMu77vjs7lM1pV0NMyTa/wpQDuNxduUmDV/BwH4SFib1NxRedkO3GIt2U/YFMG1N0KIdF60Ti8fApVj4XMp7NctNYFgR6qLc39Wa5YFmtU97WUQJI3JWXf5WHUogUE+Pt2QdVam/a2CmABkgQQ507ur5eix9ZJbDBs09yMGDvJoPOESVEEry+ItdTIHKDc1JRewrhtYtRnMUodc2BWPc9y8tHBhkJT7EfuB1Cwl8Hcz4qSEIXaqzPJhNsoSCqTrD9FFQkVTCqyFYsDezf8GQLZdYEhf5cInt2WhPh/p/I4j3XUIXA9JKig9PevL9iIwbPjAB9cvQ3BgoHqxlJw2tzcyHQDC/6XOmJVvaBbSeXTJQGH+sNp5bPSvB1F1QdbwzPhuNnWBWzPUhRc5CTOiq/0mw4laGp6kOsO63Z8Rt9nRnJ8qt26cXqPx+3I5lJpaKuOgBkdo1gv42N9VYz/QdUibIqM1f1AtF8= soloma70@ubuntu-master"
}