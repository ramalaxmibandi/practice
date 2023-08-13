resource "aws_instance" "webserver_instance" {

  ami           = data.aws_ami.myubuntuami.id
  instance_type = "t2.micro"

  vpc_security_group_ids = ["${aws_security_group.sg_webserver.id}"]
}

resource "aws_instance" "webserver2_instance" {

  ami           = data.aws_ami.myubuntuami.id
  instance_type = "t2.micro"

  vpc_security_group_ids = ["${aws_security_group.sg_webserver.id}"]
}
