resource "aws_autoscaling_group" "MyWebServerASG" {
  name                      = "WebServerASG"
  max_size                  = 5
  min_size                  = 1
  health_check_grace_period = 1
  health_check_type         = "ELB"
  desired_capacity          = 2
  force_delete              = true
  target_group_arns =  [aws_lb_target_group.test.id]
  load_balancers = [aws_lb.test.id]
  vpc_zone_identifier = [aws_subnet.sub1.id,aws_subnet.sub2.id]

 launch_template {
    id      = aws_launch_template.WebServer-Launch-Template.id
    version = "$Latest"
  }

} 

