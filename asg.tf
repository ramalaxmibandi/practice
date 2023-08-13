resource "aws_launch_template" "webserver_instance" {
  name_prefix   = "practice"
  image_id      = "ami-053b0d53c279acc90" 
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "webserver_instance" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 2
  max_size           = 2
  min_size           = 1

  launch_template {
    id      = aws_launch_template.webserver_instance.id
    version = "$Latest"
  }
}