provider "aws" {
    region = var.aws_region
}

data "aws_ami" "amazon_linux" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = var.bucket_name

    tags = {
        Name = "MyS3Bucket"
    }
}

resource "aws_instance" "my_ec2" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name
    }
    depends_on = [
        aws_s3_bucket.my_bucket
    ]
}