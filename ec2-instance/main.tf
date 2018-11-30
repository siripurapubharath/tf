resource "aws_security_group" "allow_http" {
name="${var.name} allow_http"
description="Allow HTTP traffic"



vpc_id = "${aws_vpc.my_vpc.id}" 
  #"${var.vpc_id}"

ingress {
from_port=80
to_port=80
protocol="tcp"
cidr_blocks=["0.0.0.0/0"]
}

egress {

from_port=0
to_port=0
protocol="-1"
cidr_blocks=["0.0.0.0/0"]

}
}

#----------------------------------------------------------

#VPC

resource "aws_vpc" "my_vpc" {
cidr_block="10.0.0.0/16"

tags {

Name="my-vpc"
}
}

resource "aws_subnet" "public" {
vpc_id="${aws_vpc.my_vpc.id}"
cidr_block="10.0.1.0/24"

tags {

Name="public-subnet"
}
}

resource "aws_instance" "msr-test-instance-1" {
  ami             = "ami-04ea996e7a3e7ad6b"
  instance_type   = "t2.micro"
  count		  = "2"
  key_name = "msrKey"
  subnet_id       = "${aws_subnet.public.id}"
  vpc_security_group_ids=["${aws_security_group.allow_http.id}"]
  tags {
    Name = "${format("MSR-test-Instance-%01d",count.index+1)}"
	#"MSR-test-Instance-1"
  }
}



