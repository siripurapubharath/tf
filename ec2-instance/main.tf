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



