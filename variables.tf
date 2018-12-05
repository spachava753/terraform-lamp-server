variable "vpc_cidr_block" {
  description = "CIDR notation for VPC"
}

variable "instance_key_pair" {
  description = "private key name"
}

variable "instance_key_pair_path" {
  description = "private key path"
}

variable "credentials_path" {
  description = "Location of credentials file"
}

variable "profile" {
  description = "AWS profile to use"
}

variable "region" {
  description = "AWS region to use"
}