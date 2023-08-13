variable "webserver_port" {
  description = "Port of webserver for https requests"
  default     = 8080
}

variable "my_instance_type" {
  description = "instance type of ec2"
  default     = "t2.micro"
}