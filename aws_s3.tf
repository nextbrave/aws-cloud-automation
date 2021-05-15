resource "aws_s3_bucket" "aws-cloud-automation-s3" {
    bucket = "aws-cloud-automation.nextbrave.com"
    acl = "private"

    tags = {
        Owner = "terraform-aws-cloud-automation"
        Project = "aws-cloud-automation"
    }
}