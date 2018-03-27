# tf-multiple-cidr-vpc-vpc

Multiple CIDR attachments to VPC POC.
=====================================
This small poc allow us to test the association of multiple cidr blocks to a 
single VPC in Terraform.

This functionality is part of the AWS API but is not yet supported in Terraform,
to achieve this functionality we will use the modified terraform-provider-aws by 
[Paul Stack](http://www.paulstack.co.uk/).

Prerequisites
-------------

Built With
----------

* [Terraform](http://www.terraform.io/)

Terraform 0.11.3 or newer is required for this module to work.

Dependencies
------------

* Terraform 0.11.3
* An AWS account

Provider
--------
This terraform project uses the [terraform-provider-aws](https://github.com/stack72/terraform-provider-aws/tree/f-aws-vpc-cidr-association).
We will make use of a compiled version of the stack72 code. So in order to make
this POC run, we must build a special version of our terraform image with this
custom provider on it.

Terraform Usage
---------------

**1\. Ensure your AWS credentials are set up.**

This can be done using environment variables:

``` bash
$ export AWS_SECRET_ACCESS_KEY='your secret key'
$ export AWS_ACCESS_KEY_ID='your key id'
```

... or the `~/.aws/credentials` file.

```
$ cat ~/.aws/credentials
[default]
aws_access_key_id = your key id
aws_secret_access_key = your secret key

```

**2\. Review the Terraform plan.**

Execute the below command and ensure you are happy with the plan.

``` bash
$ terraform plan
```

**3\. Execute the Terraform apply.**

Now execute the plan to provision the AWS resources.

``` bash
$ terraform apply
```


**4\. Destroy the resources.**

Once you are finished your testing, ensure you destroy the resources to avoid unnecessary AWS charges.

``` bash
$ terraform destroy
```
