resource "aws_lb" "test" {
  name               = "WebServer-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_tls.id]
  subnets            = [aws_subnet.sub1.id,aws_subnet.sub2.id]
  
}


