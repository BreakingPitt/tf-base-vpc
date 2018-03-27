variable aws_region {
  default     = ""
  description = "AWS region to create infrastructure."
}

variable vpc_cidr_block_a {
  default     = ""
  description = "First CIDR block for the VPC"
}

variable vpc_cidr_block_b {
  default     = ""
  description = "Second CIDR block for the VPC"
}

variable vpc_cidr_block_c {
  default     = ""
  description = "Third CIDR block for the VPC"  
}
