####################################################################
#### Created by : Kalyan Chakravarthi/ Kalyan Bhave ####
#### Date : 20-Nov-2019 ####
#### Updated by : Balakrishna/ Praveen kumar/ Sathish kumar ####
####################################################################
resource "aws_security_group_rule" "sgr" {
  count             = length(var.ports)
  type              = "ingress"
  from_port         = element(var.ports, count.index)
  to_port           = element(var.ports, count.index)
  protocol          = var.protocol
  cidr_blocks       = var.cidr_blocks
  description       = var.description
  security_group_id = var.security_group_id
  self              = var.self
}