variable aws_region {
  description = "AWS region to create infrastructure."
  type        = "string"
}

variable vpc_cidr_block_a {
  description = "First CIDR block for the VPC"
  type        = "string"
}

variable vpc_cidr_block_b {
  description = "Second CIDR block for the VPC"
  type        = "string"
}

variable vpc_cidr_block_c {
  description = "Third CIDR block for the VPC" 
  type        = "string"
}
