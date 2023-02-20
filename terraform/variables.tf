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
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCNFxghQsFKXZwV3bCp/iUk2tK4inAktVOeCquvlgTR1DEha3aLtZ2FtNvuQ7uL/cBbz/x7oSJOtJk/NfbNA6ElAFwU8LnHy4tv0f2Pf6ztge+kG2jgESUyTpH92cSSibK9kGWI5HVN4fwhQIBX8kRNLls4sWmvLSjGhuDHC0FOnSY/zmtfXuKIIgqgbTf8bvMSbcPea5GtYB77xj2ba9VipcwN29dIQGr9wlJZBr7lW53bD+yVLdokTp1xJQ5PMvKND8rSHDK7z95oRZbTTXXHERiWplnQEntecqaSUNtlXdXKvJw5XPPd7Cc65vFGjHNxYckzSc+zYihotJkcqA2qjKha+GEK6OulLv6S7ATmbK/g3oDtJtPutbjwyqV3J/Rktiz5/6k1AZfLi9Z/pkNfbiUTGBkbpOyeJMwzTYtrTi7qllh5N2a75sCyS8XLmm2sgNTRH/u5eA/qRIdgf+w+B1XQipOdKcf+i0vVl8yhy5On7T4Fj4qWopn4donV1XE= soloma70@ubuntu-master"
}