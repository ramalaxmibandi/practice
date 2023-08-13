resource "aws_security_group" "sg_webserver" {

  name = "webserver-example-sg"

  ingress {
    from_port   = var.webserver_port
    to_port     = var.webserver_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}