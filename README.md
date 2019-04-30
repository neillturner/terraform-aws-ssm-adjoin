# terraform-aws-ssm_adjoin

creates ssm document to join ad domain

# Overview

creates ssm document to join ad domain

* http://www.sanjeevnandam.com/blog/aws-microsoft-ad-setup-with-terraform
* https://aws.amazon.com/blogs/security/how-to-configure-your-ec2-instances-to-automatically-join-a-microsoft-active-directory-domain/
* https://forums.aws.amazon.com/thread.jspa?threadID=181520

## Requirements

This module requires Terraform version `0.10.x` or newer.

## Dependencies

This module depends on a correctly configured [AWS Provider](https://www.terraform.io/docs/providers/aws/index.html) in your Terraform codebase.

## Usage

# Outstanding Issues

## Need to cleanup the Active Directory for instances that have been terminated

Need a way of finding all the machine names of instances are active (i.e. they exist in AWS and are not terminated).
Then goes through Active Directory and delete all commputers that aren't active.
SimpleAD does not support the Powershell AD interface so need to use dsrm command

See https://serverfault.com/questions/631754/how-can-i-see-the-windows-computer-name-for-an-ec2-instance-without-logging-in-v
