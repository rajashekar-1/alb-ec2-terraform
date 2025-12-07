# AWS region
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# AMI ID
variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-0f00d706c4a80fd93" # Amazon Linux 2023 x86_64 HVM
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

# Public subnet CIDRs
variable "public_subnet_1_cidr" {
  description = "Public subnet 1 CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "Public subnet 2 CIDR"
  type        = string
  default     = "10.0.2.0/24"
}

# EC2 key pair name for SSH access
variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
  default     = "naveen-kp"  # Updated to new key pair
}

# Auto Scaling sizes
variable "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = number
  default     = 2
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling Group"
  type        = number
  default     = 1
}
