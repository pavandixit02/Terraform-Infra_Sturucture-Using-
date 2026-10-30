# Terraform AWS Resources: S3 Bucket and EC2 Instance

A beginner-friendly Terraform project that demonstrates how Infrastructure as Code (IaC) can be used to manage AWS resources consistently and repeatably.

## Project Overview

This project uses Terraform to define and manage two AWS resources:

- **Amazon EC2 instance:** A virtual server that can be used to practise Linux administration, host applications, or learn cloud deployment.
- **Amazon S3 bucket:** A storage container for objects such as files, backups, and application assets.

The configuration also demonstrates how Terraform can look up an existing Amazon Machine Image (AMI), accept configurable values through variables, control resource creation order, and display a value through an output.

For the detailed explanation of the Terraform configuration and the workflow, see **[Resource-Guide.md](Resource-Guide.md)**.

## Project Structure

```text
.
├── main.tf
├── Output.png
├── outputs.tf
├── Resource-Guide.md
├── terraform.tfstate
└── variable.tf
```

## Files and Their Purpose

| File | Purpose |
|---|---|
| `main.tf` | Defines the AWS provider, AMI lookup, S3 bucket, and EC2 instance configuration. |
| `variable.tf` | Holds configurable project values, such as the AWS region, instance type, instance name, and bucket name. |
| `outputs.tf` | Defines the value Terraform displays after applying the configuration. |
| `Resource-Guide.md` | Provides beginner-friendly documentation about the resources and how the project works. |
| `Output.png` | Screenshot associated with the project. |
| `terraform.tfstate` | Terraform's local record of the infrastructure it manages. This file may contain sensitive information and should not be published. |

## Key Concepts Demonstrated

- **Infrastructure as Code:** Describe cloud infrastructure in configuration files instead of creating every resource manually.
- **Terraform provider:** Connect Terraform to AWS.
- **Data source:** Look up an existing AMI that can be used to launch an EC2 instance.
- **Resources:** Define the S3 bucket and EC2 instance that Terraform manages.
- **Variables:** Keep values configurable and make the project easier to adapt.
- **Dependencies:** Specify resource ordering when one resource must be created before another.
- **Outputs:** Display selected information from the managed infrastructure.

## AWS Resources

### Amazon EC2

The project defines an EC2 instance using an AMI discovered through a Terraform data source. The instance type and Name tag are configured through variables.

### Amazon S3

The project defines an S3 bucket with a configurable bucket name. S3 bucket names must be globally unique across AWS, so a name may need to be changed if it is already in use.

## Before Using This Project

- Have an AWS account with permissions required to create the configured resources.
- Configure AWS credentials securely for the user running Terraform.
- Confirm that the selected AWS region supports the required AMI and instance type.
- Review AWS pricing and current Free Tier eligibility before creating resources.
- Read **[Resource-Guide.md](Resource-Guide.md)** for the detailed explanation and workflow.

## Security and State File

Terraform state helps Terraform track real infrastructure. The local state file can contain sensitive infrastructure details.

**Do not commit `terraform.tfstate` or state backup files to a public repository.** For a public GitHub project, keep the state file out of version control and use a suitable `.gitignore`. Never store AWS access keys or secret keys in Terraform configuration files.

For team or production use, consider a secured remote state backend with access controls and state locking where supported.

## Cost Awareness

AWS resources may incur charges, including compute time, storage, requests, and data transfer. Charges depend on account eligibility, region, usage, and current AWS pricing. Check the resources in the AWS Console and remove them when they are no longer needed.

## Learning Outcomes

After reviewing this project, a beginner can learn how Terraform represents AWS infrastructure, how resources differ from data sources, why variables are useful, how dependencies affect creation order, and how outputs expose selected resource information.

## Documentation

- **[Resource-Guide.md](Resource-Guide.md)** — detailed project guide.
- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Amazon EC2 Documentation](https://docs.aws.amazon.com/ec2/)
- [Amazon S3 Documentation](https://docs.aws.amazon.com/s3/)

---

**Project focus:** Learn Terraform resource management on AWS through a small, understandable EC2 and S3 example.
