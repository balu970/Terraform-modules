####################################################################
#### Created by : Kalyan Chakravarthi/ Kalyan Bhave ####
#### Date : 20-Jun-2020 ####
#### Updated by : Balakrishna/ Praveen kumar/ Sathish kumar ####
####################################################################
resource "aws_lb" "alb" {
  name            = "${var.name}-alb"
  security_groups = var.security_groups
  subnets         = var.subnets
  internal        = var.lb_internal
  tags = {
    Name     = var.name
    Environment = var.environment
    Created_using = var.Created_using
  }
}
