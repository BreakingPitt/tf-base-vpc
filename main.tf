resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr_block_a}"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "false"

  lifecycle {
    create_before_destroy = true
  }

  tags {
    Created_with = "Terraform"
    Created_by   = "Pedro Garcia Rodriguez pedgarrod@gmail.com"
    Date         = "${timestamp()}"
    Name         = "vpc-main"
  }
}

resource "aws_vpc_associate_cidr_block" "vpc_main_cidr_b" {
  vpc_id          = "${aws_vpc.main.id}"
  ipv4_cidr_block = "${var.vpc_cidr_block_b}"
}

resource "aws_vpc_associate_cidr_block" "vpc_main_cidr_c" {
  vpc_id          = "${aws_vpc.main.id}"
  ipv4_cidr_block = "${var.vpc_cidr_block_c}"
}
