resource "aws_launch_template" "WebServer-Launch-Template" {
  name = "WebServer-Launch-Template"
  disable_api_stop        = true
  disable_api_termination = true
  ebs_optimized = true

  iam_instance_profile {
    name = "WebServer-Launch-Template"
  }
  image_id = "ami-0376ec8eacdf70aae"
  instance_initiated_shutdown_behavior = "terminate"
  instance_type = "t2.micro"
  key_name = "key"
  security_group_names = [aws_security_group.allow_tls.name]

  network_interfaces {
    associate_public_ip_address = true
  }

  placement {
    availability_zone = "ap-south-1a"
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "test"
    }
  }

  user_data = filebase64("user_data.sh")



}


