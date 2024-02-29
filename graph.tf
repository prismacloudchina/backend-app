resource "aws_lb" "lb_good_1" {
  tags = {
    yor_trace = "3f12df17-828f-48ac-8526-0b46cb50b239"
  }
}

resource "aws_lb" "lb_good_2" {
  tags = {
    yor_trace = "64d2be22-411f-4457-b280-7f1801e34e10"
  }
}

resource "aws_lb" "lb_good_3" {
  tags = {
    yor_trace = "f7928fb1-f036-4012-8aec-1f05140d15f8"
  }
}

resource "aws_alb" "alb_good_1" {
  tags = {
    yor_trace = "6e650d52-4ca0-467a-9e7b-892eae01ae15"
  }
}

resource "aws_lb" "lb_bad_1" {
  tags = {
    yor_trace = "4e859f38-e997-4bab-bb99-19b09102c227"
  }
}

resource "aws_lb" "lb_bad_2" {
  tags = {
    yor_trace = "72b1d390-523a-4afc-9bd2-e0be46047d8f"
  }
}

resource "aws_alb" "alb_bad_1" {
  tags = {
    yor_trace = "279205b3-a7a2-40b1-ae0d-8588caf28a50"
  }
}

resource "aws_lb_listener" "listener_good_1" {
  load_balancer_arn = aws_lb.lb_good_1.arn
  port              = "443"
  protocol          = "HTTPS"

  default_action {
    type = "action"
  }
}

resource "aws_lb_listener" "listener_good_2" {
  load_balancer_arn = aws_lb.lb_good_2.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }

  }
}

resource "aws_lb_listener" "listener_good_3" {
  load_balancer_arn = aws_lb.lb_good_3.arn
  port              = 80 #as an int
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }

  }
}

resource "aws_alb_listener" "listener_good_1" {
  load_balancer_arn = aws_alb.alb_good_1.arn
  port              = 80 #as an int
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }

  }
  tags = {
    yor_trace = "6b590dd1-4030-4b40-a09a-3649bf15eac0"
  }
}

resource "aws_lb_listener" "listener_bad_1" {
  load_balancer_arn = aws_lb.lb_bad_1.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "some-action"
  }
}

resource "aws_lb_listener" "listener_bad_2" {
  load_balancer_arn = aws_lb.lb_bad_2.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "some-action"
  }
}

resource "aws_alb_listener" "listener_bad_1" {
  load_balancer_arn = aws_alb.alb_bad_1.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "some-action"
  }
  tags = {
    yor_trace = "5dbda81b-6db1-46dd-8bcd-97c13ef6da09"
  }
}