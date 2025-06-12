variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-2"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
  default     = "mytestkey"
}   

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ubuntu_ami" {
  description = "Ubuntu 20.04 AMI ID"
  type        = string
  default     = "ami-06c19207c1ab181f0"
}

variable "al2_ami" {
  description = "Amazon Linux 2 AMI ID"
  type        = string
  default     = "ami-00dba258cd1abfccb"
}

variable "al2023_ami" {
  description = "Amazon Linux 2023 AMI ID"
  type        = string
  default     = "ami-07b7cae50f732535f"
}

variable "domain_name" {
  description = "Route53 Hosted zone domain name"
  type        = string
  default     = "unmashable.online."
}

variable "admin_email" {
  description = "Email for SSL cert notifications"
  type        = string
  default     = "aisha.salman03@gmail.com"
}
