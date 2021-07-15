####################################################################
#### Created by : Kalyan Chakravarthi/ Kalyan Bhave ####
#### Date : 20-Nov-2019 ####
#### Updated by : Balakrishna/ Praveen kumar/ Sathish kumar ####
####################################################################
resource "aws_security_group" "sec_grp" {
  vpc_id                 = var.vpc_id
  description            = "${var.name}-sg"
  revoke_rules_on_delete = true
  name                   = "${var.name}-sg"
  tags = {
    Name = var.name
    Created_using = var.Created_using
  }
}