resource "aws_security_group" "aws-cloud-automation-sg" {

    name = "aws-cloud-automation-sg"
    description = "Allow ssh traffic"

    vpc_id = "vpc-b5b640c8"

    ingress {
        from_port = 22
        protocol = "tcp" 
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        protocol = "-1" 
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "aws-cloud-automation-ec2" {

    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"

    key_name = "ec2_duocode"

    vpc_security_group_ids = [aws_security_group.aws-cloud-automation-sg.id]


    tags = {
        Name = "aws-cloud-automation-ec2"
        Owner = "terraform-aws-cloud-automation"
        Project = "aws-cloud-automation"
    }
}